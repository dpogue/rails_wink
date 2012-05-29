var profile = {
  screen:     {},
  browser:    {},
  modernizr:  {},
  plugins:    {}
};
profile.screen.width = window.screen.width;
profile.screen.height = window.screen.height;

profile.browser.userAgent = window.navigator.userAgent;
profile.browser.width = window.innerWidth;
profile.browser.height = window.innerHeight;
profile.browser.availWidth = window.screen.availWidth;
profile.browser.availHeight = window.screen.availHeight;

profile.modernizr = winkModernizr;
