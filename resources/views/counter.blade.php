<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pusher Test</title>
  <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
  <script>

    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('1cff5a9f80d89c700679', {
      cluster: 'ap1',
        forceTLS: true
    });

    var channel = pusher.subscribe('channel');
    channel.bind('mess', function(data) {
        var notificationObj = new Notification('dsafas', {
            body: 'dsafajkhkjdsa',
        });
        notificationObj.close();
      alert(JSON.stringify(data));
    });
  </script>
</head>
<body>
  <h1>Pusher Test</h1>
  <p>
    Try publishing an event to channel <code>my-channel</code>
    with event name <code>my-event</code>.
  </p>
</body>
</html>
