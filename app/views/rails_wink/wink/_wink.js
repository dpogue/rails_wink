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


/* Detect Flash support */
profile.plugins.flash = (function() {
    var hasFlash = false;
    if (navigator.plugins && navigator.plugins.length) {
      if (navigator.plugins['Shockwave Flash']) {
        /* I think this is the only case where we can get the version number */
        hasFlash = navigator.plugins['Shockwave Flash'].description;
      }
    } else if (navigator.mimeTypes && navigator.mimeTypes.length) {
      var mimeType = navigator.mimeTypes['application/x-shockwave-flash'];
      hasFlash = mimeType && mimeType.enabledPlugin;
    } else {
      try {
        var ax = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
        hasFlash = true;
      } catch (e) {
        // No flash
      }
    }
    return hasFlash;
})();
