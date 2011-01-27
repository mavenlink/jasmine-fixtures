// Here is an example of how you might use the fixtures in your jasmine tests.  Obviously this test won't actually work
// in your project.
describe('User pages', function () {
  describe('the signup page', function() {
    it('looks correct', function() {
      spec.loadFixture('user-signup-page');
      expect($("#some_id")).toExist();
    });
  });

  describe('user signup success page load over ajax', function() {
	it('inserts the returned content into the page', function() {
	  spec.loadFixture('user-signup-page');
	  var fixtureData = spec.readFixture('user-success-ajax-response');
	  doSomethingInvolvingAnAjaxCallThatReceivesHTML();
	  $.ajax.mostRecentCall.args[0].success(fixtureData);
	  expect($("#some_id_in_the_ajax_response")).toExist();
	  expect(somethingExcitingToHaveHappened()).toBeTruthy();
	});
  });
});