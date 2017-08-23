import BaseHTTPServer    
import urlparse    
import time  
import datetime
from SocketServer import ThreadingMixIn  
import threading  
  
class WebRequestHandler(BaseHTTPServer.BaseHTTPRequestHandler):    
      
  def do_GET(self):
        now = datetime.datetime.now()
        parsed_path = urlparse.urlparse(self.path)
        message = '\n'.join([
          'Hello Juno '+now.strftime('%Y-%m-%d %H:%M:%S'),
          'CLIENT VALUES:',
          'client_address=%s (%s)' % (self.client_address, self.address_string()),
          'command=%s' % self.command,
          'path=%s' % self.path,
          'real path=%s' % parsed_path.path,
          'query=%s' % parsed_path.query,
          'request_version=%s' % self.request_version,
          '',
          'SERVER VALUES:',
          'server_version=%s' % self.server_version,
          'sys_version=%s' % self.sys_version,
          'protocol_version=%s' % self.protocol_version,
          '',
        ])
        self.send_response(200)
        self.end_headers()

        self.wfile.write(message)

        return  
  
class ThreadingHttpServer( ThreadingMixIn, BaseHTTPServer.HTTPServer ):  
    pass  
  
if __name__ == '__main__':  
    #server = BaseHTTPServer.HTTPServer(('0.0.0.0',18460), WebRequestHandler)    
    server = ThreadingHttpServer(('0.0.0.0',8080), WebRequestHandler)    
    ip, port = server.server_address  
    # Start a thread with the server -- that thread will then start one  
    # more thread for each request  
    server_thread = threading.Thread(target=server.serve_forever)  
    # Exit the server thread when the main thread terminates  
    server_thread.setDaemon(True)  
    server_thread.start()  
    print "Server loop running in thread:", server_thread.getName()  
    while True:  
        pass  
