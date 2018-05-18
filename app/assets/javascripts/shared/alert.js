document.addEventListener('turbolinks:load', function () {
  var closable = document.querySelectorAll('[data-closable]');

  for (var i = 0; i < closable.length; i++) {
    var self = closable[i];

    self.querySelector('.close-button')
      .addEventListener('click', function () {
        self.remove();
      });
  }
});
