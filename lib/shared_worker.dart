import 'dart:html' as html;

 final worker = html.SharedWorker('shared_worker.js');
// Create and manage the Shared Worker
void setupSharedWorker(Function(dynamic eventData) callback) {
 

  // Listen for messages from the worker
  worker.port!.onMessage.listen((event) {
    callback(event.data);
  });

  
}


void handleClickData(String q){
// Send a message to the worker
  worker.port!.postMessage(q);
}