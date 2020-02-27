var db = require('../db');

db.connection.connect(function(err) {
  if (err) {
    throw err;
  }
  console.log("Connected!");
});

module.exports = {
  messages: {
    get: function () {

      // SELECT text FROM messages
      var selector = "SELECT text FROM messages";
      db.connection.query(selector, (err, messages) => {
        if (err) {
          throw err;
        }
        console.log(messages);
      });

    }, // a function which produces all the messages
    post: function () {
      // INSERT INTO messagge ... innerjoin thing...
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

