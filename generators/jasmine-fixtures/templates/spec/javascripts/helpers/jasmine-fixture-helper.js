beforeEach(function() {
  $('#jasmine_content').empty();
  spec.cleanupHooks();
});

afterEach(function() {
  spec.cleanupHooks();
  expect(spec.loadFixtureCount).toBeLessThan(2);
  spec.loadFixtureCount = 0;
  expect($('.ui-dialog').length).toEqual(0);
  expect($('.ui-autocomplete-results').length).toEqual(0);
});

spec.cleanupHooks = function() {
  // clearLiveEventBindings is helpful if using jQuery live events
	// uncomment if you'd like
	// spec.clearLiveEventBindings();
	
  window.onbeforeunload = null;
};

spec.clearLiveEventBindings = function() {
  var events = jQuery.data(document, "events");
  for (prop in events) {
    delete events[prop];
  }
};

spec.content = function() {
  return $('#jasmine_content');
};