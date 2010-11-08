if (typeof spec === 'undefined') {
  var spec = {};
}

beforeEach(function() {
  $('#jasmine_content').empty();
  spec.cleanupHooks();
});

afterEach(function() {
  spec.cleanupHooks();
  expect(spec.loadFixtureCount).toBeLessThan(2);
  spec.loadFixtureCount = 0;
});

spec.cleanupHooks = function() {
  // clearLiveEventBindings is helpful if using jQuery live events, uncomment if you'd like to use it.
	// spec.clearLiveEventBindings();
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
