'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "3837af3c3b08fba6db47f78c15650b51",
"assets/assets/icons/1.svg": "dd31beb9790f72aab695465427da9770",
"assets/assets/icons/10.svg": "a55f80853be3e67c69a8a5740fb9b610",
"assets/assets/icons/11.svg": "f73d04f64056210b66a11835c022fbed",
"assets/assets/icons/12.svg": "57af3106914532730fd38982f2cb80dc",
"assets/assets/icons/13.svg": "f05bdf57a5d45e4e745ba452c09ced7a",
"assets/assets/icons/14.svg": "db3d29f22c8f3f5a76f6d2f298cc18dd",
"assets/assets/icons/2.svg": "02e02d56ee908a9072c40aa8eb3ac50f",
"assets/assets/icons/3.svg": "4674d66a5a335782f2c9bcf1db360aa8",
"assets/assets/icons/4.svg": "d3a4f0802fd380de80583023bb0512fc",
"assets/assets/icons/5.svg": "bf77bb1f7e8850a040986111d60f390a",
"assets/assets/icons/6.svg": "c25615da259815c4687ff3b828cc0974",
"assets/assets/icons/7.svg": "044ed00b2685f5230cd7ee5d722af6d7",
"assets/assets/icons/8.svg": "27d0ce24bd1ec3bfe7a29eccf8453e00",
"assets/assets/icons/9.svg": "ea6fd96263b820b08ff50f9cf41a92d4",
"assets/assets/icons/facebook.svg": "4370e16003c02bc157542a27dd30b1e4",
"assets/assets/icons/gmail.svg": "01fa57e5f675bf7020de0d9ad9d619f1",
"assets/assets/icons/google.svg": "1651d8b87f0961b52b759a8169341659",
"assets/assets/icons/instagram.svg": "73a21058cf6e54d04e445860824c53a8",
"assets/assets/icons/linkedIn.svg": "9419e9f024acae4e057ac247710e7e2f",
"assets/assets/icons/right.svg": "07cad1b476b5e5e2747b38db71c83604",
"assets/assets/icons/the_intern_bay_logo.png": "d7d66a1b8c37ee3eb028ef3970bbe3d2",
"assets/assets/icons/twitter.svg": "6328aed5a21711f3750392e046e9b803",
"assets/assets/icons/Untitled_design.svg": "61c60ed60e0a3e57f3f30f0ce7667765",
"assets/assets/icons/youtube.svg": "4ffdc510036365a9784d3a301fffc256",
"assets/assets/images/789.png": "6b5e7d816f62fccd768f8158673c1184",
"assets/assets/images/ai.png": "9c656e0533b303a34a71b86fb308621d",
"assets/assets/images/app.png": "f4a67d8e7dc1da45aab043710248ad52",
"assets/assets/images/image.png": "eb1276c6edf80384d31569d38f78fc4f",
"assets/assets/images/itb_background.svg": "e5c2f53cacbcbd79ef07c6339e5ebe24",
"assets/assets/images/mat.png": "e4779bf05afda556338a3060c5883306",
"assets/assets/images/ml.png": "8113b2b41eb58accc8fcb4be1676b241",
"assets/assets/images/tib_certificate.png": "0093b4802f69dbaaeb4d0628b73f4e33",
"assets/assets/images/web.png": "f0f3c6fbbaf6e39f54bef014274a304b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "b44686fd7b9e0fc4e0d562f7b60fb981",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/tib.gif": "21f0b3d85b8daabd4182cd432cbdaf63",
"assets/tib.png": "032338b92d02ef3e3f2c47553d407053",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "408ac4f3217afd8dbdd262d9ec4770d3",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "5c45c91fccf8fd05fa431a6dd47014e4",
"icons/Icon-512.png": "c2163649d39f473a977aea060a16c2ff",
"icons/Icon-maskable-192.png": "5c45c91fccf8fd05fa431a6dd47014e4",
"icons/Icon-maskable-512.png": "c2163649d39f473a977aea060a16c2ff",
"index.html": "cea6965134d00831ed38877d5015eee9",
"/": "cea6965134d00831ed38877d5015eee9",
"main.dart.js": "6205dd83b9cad7554bdf807ac3c8bebf",
"manifest.json": "576cb5f6026b0ff53993ed5b3dbcfd9d",
"version.json": "522ccdf9577b56f6d079154e5bf7ba0c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
