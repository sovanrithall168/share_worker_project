// shared_worker.js
const connections = [];

onconnect = (event) => {
  const port = event.ports[0];
  connections.push(port);

  port.onmessage = (messageEvent) => {
    for (const conn of connections) {
      if (conn !== port) {
        conn.postMessage(messageEvent.data);
      }
    }
  };

  port.onclose = () => {
    const index = connections.indexOf(port);
    if (index !== -1) {
      connections.splice(index, 1);
    }
  };
};
