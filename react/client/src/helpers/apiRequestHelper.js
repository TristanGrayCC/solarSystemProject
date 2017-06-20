class ApiRequestHelper{

  getAll(callback){
    const url = 'http://localhost:5000/api/planets';
    const request = new XMLHttpRequest();
    request.open('GET', url);

    request.addEventListener('load', () => {
      if (request.status !== 200) return;
      const jsonString = request.responseText;
      const data = JSON.parse(jsonString);
      callback(data);
    });
    request.send();
  }
}

export default ApiRequestHelper;
