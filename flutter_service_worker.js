'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.bin": "ebf5f75a05141468858574a71ec5e388",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/AssetManifest.json": "e6e76db301973869a6c931a1aba4d349",
"assets/FontManifest.json": "82afd067b8eabca96c178c1c6ecfd946",
"assets/assets/fonts/Montserrat-ExtraBold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_Condensed-Bold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/Montserrat-Light.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/IBMPlexSans-Bold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/IBMPlexSans-SemiBold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/AstaSans-ExtraBold.ttf": "03efabce79dab7f78008aa76a243530d",
"assets/assets/fonts/Montserrat-Bold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_Condensed-Regular.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/AstaSans-Medium.ttf": "ffa6d3405076f228dc6c23ce824366f1",
"assets/assets/fonts/OpenSans_Condensed-Medium.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/Montserrat-Medium.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_SemiCondensed-Medium.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/IBMPlexSans-Light.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/AstaSans-SemiBold.ttf": "542efadce766dd0ed1881ad0d052e4ad",
"assets/assets/fonts/AstaSans-Bold.ttf": "cab49c0f86559ce179f035704df5d249",
"assets/assets/fonts/AstaSans-Regular.ttf": "362374507ccb6f53a6d58a41e01e9967",
"assets/assets/fonts/OpenSans_Condensed-ExtraBold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_Condensed-SemiBold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/IBMPlexSans-Medium.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_SemiCondensed-Regular.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_SemiCondensed-SemiBold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_SemiCondensed-ExtraBold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_Condensed-Light.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/OpenSans_SemiCondensed-Bold.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/AstaSans-Light.ttf": "feae5dcccdab979a4fdddd855a2dd19e",
"assets/assets/fonts/OpenSans_SemiCondensed-Light.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/IBMPlexSans-ExtraLight.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/Montserrat-ExtraLight.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/images/wind.png": "73eb9f3f1a7d807069401bf41efbec39",
"assets/assets/images/img_ai.png": "47ffb294834f86632a4f62f61c545266",
"assets/assets/images/pen.png": "7a354bde0a7141a69596b57b5eeea8c9",
"assets/assets/images/evolution.png": "36c7fa779760b56eee16dcbc4b763684",
"assets/assets/images/title_1.png": "a1ea5fa17b88c9336f3c1d9255c1e34d",
"assets/assets/images/MONEY.png": "6b102602d7ac034d8077366d3b2f9260",
"assets/assets/images/img_ae.png": "af74882d36ca7c795a98a542b1a0e7cf",
"assets/assets/images/img_ps.png": "42e73e4193d73ab6b179706d7998725a",
"assets/assets/images/img_figma.png": "cec65182131ad7dcfce2f7b644d8a4f9",
"assets/assets/images/title_3.png": "41031bce267a389fec3b8c73e86f6b7c",
"assets/assets/images/title_2.png": "a710f93135ae14bd04df3884c1590dc8",
"assets/assets/images/switch.png": "71d165ec09400e450380fdeb030804a1",
"assets/assets/images/img_cenema.png": "6a221859850caf02ddae6c010b92cbcd",
"assets/assets/images/img_id.png": "e45ea406c1ef8e0faac18a8a53c52781",
"assets/assets/images/title_3_white.png": "0bf53fda1f6190e500ebb861eb2b2034",
"assets/assets/images/Apple.png": "968bd9f04db3ece89908ab52a76a1ce0",
"assets/NOTICES": "8f79aa48348012d2d822630ce648c13b",
"assets/AssetManifest.bin.json": "eeefac7da7b01a2377ec2fab624b22b5",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"manifest.json": "47c0bda0f54e20b44737e4cb639d5930",
"index.html": "cc89d589c2a9d41e4d8b0187a7f26cf7",
"/": "cc89d589c2a9d41e4d8b0187a7f26cf7",
"version.json": "48f88c2df0c99abe3a524c98c2a600bf",
"flutter_bootstrap.js": "bd789f9aa0a547948ecb5f19818334fc",
"main.dart.js": "eb471e3faec16a79c1d15b05298dd516",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
