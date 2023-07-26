'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"index.html": "09f6163cc901c06a71f3aa6c3f3c6a7b",
"/": "09f6163cc901c06a71f3aa6c3f3c6a7b",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "7ba5f3b99a29dd103fa644ec496f53d3",
"version.json": "dfa7d0ef13fc852513466093b6539970",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"manifest.json": "0e76011252cdb43d84153dd06c52fe75",
"favicon.ico": "5f2f2ac973a95d5c8c2b1e50f0fcc446",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/AssetManifest.bin": "bfc72c2eefd0d8c405ce25314391e80d",
"assets/AssetManifest.json": "b60507929f8e33161f234feb31881ac1",
"assets/NOTICES": "6bcda841aa743f33f0879faf73deb7e3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/assets/images/288852466_3107223449607155_856030303189291056_n.jpg": "b5f60c6b7d498f0b1f74ac11bb1cb87e",
"assets/assets/images/Logo.png": "f76fc5deb917710b053e34eb147af750",
"assets/assets/images/instagram.png": "94409a775c02d7658dd6e7ba88429b63",
"assets/assets/images/1_mWjv-mIg4gGw7vhj-uCyRw.jpeg": "9cd6af29f1675a9138395243756500bb",
"assets/assets/images/My_Pic.jpg": "90dc33e6b8ea703d1db19b53ba273b6b",
"assets/assets/images/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/assets/images/1603188329234.jpeg": "9f587f5c2d98b3475b788811ee131530",
"assets/assets/images/Screenshot%25202022-08-16%2520184641.png": "5b9f3787f7b4f2061a2b1b3502c29558",
"assets/assets/images/p4755.jpg": "8b4bc633b1bf96a44792a801c0bf39d5",
"assets/assets/images/rbcs2.png": "407deed625cfc546e6dd0a36d3f4aa5a",
"assets/assets/images/HackerRank_Icon-1000px.png": "36a6830d09df60c8c1fe6992f41aa4d3",
"assets/assets/images/photo_2022-06-19_21-27-25.jpg": "be20ba655938c9f313e560c51d71c2a1",
"assets/assets/images/chatbot.png": "bb9e1dfb19aca0aa100e2d7e02bf2678",
"assets/assets/images/background.png": "0614a717659df3fd409c60ff04fac983",
"assets/assets/images/Screenshot%25202022-06-14%2520192659.png": "e5afa5abf3659f6b8622cfb5cc3c7bc3",
"assets/assets/images/download.jpeg": "6c86dbc1cdaa311d70cb60e0133729c5",
"assets/assets/images/Annotation%25202022-02-05%2520163052.png": "8bd3cd7181ffe95ecdb184e9b906f30c",
"assets/assets/images/photo_2022-06-23_12-48-53.jpg": "6c1e785b75651c999ebfe5726bca1fb4",
"assets/assets/images/Annotation%25202022-02-05%2520163126.png": "00ce5fa21a30a7ab1bd4d128afb349f5",
"assets/assets/images/bg_img_2.png": "8257ef89b2dfeab767578260965a7e2d",
"assets/assets/images/Linkedin.png": "e0ee027cfda4aaffad90646b11743ef3",
"assets/assets/images/teacher%2520mockup_014955.jpg": "47fe0a462baeb3316d793ffc244c9b4a",
"assets/assets/images/R%2520(1).png": "724794164fb289dd2f7d69dde7ac3bc0",
"assets/assets/images/drawing.jpg": "074c4f1f616d914c35a316c9fe0ab132",
"assets/assets/images/images.png": "c36dc8ee002e03cf2fb5e9265c8a45f3",
"assets/assets/images/skype.png": "955d4329bf55cd47008c2edd6c08ad99",
"assets/assets/images/R.png": "528d1207ab0cf780f5787951a9118b0a",
"assets/assets/images/Free%2520Black%2520Keyboard%2520With%2520Smartphone%2520Mockup.jpg": "7817fa13352448b2aa9038200b2577fc",
"assets/assets/images/Screenshot%25202022-06-14%2520154858.png": "222475c24a735ff5de260ab1b1bfd777",
"assets/assets/images/Profile%2520Photo-modified.png": "536d677bac4a69f8bda84e2b2e7193b1",
"assets/assets/images/1652345898144.jpeg": "d2be4f90ebfb367d1b163d2eb4656f1e",
"assets/assets/images/graphic.png": "d7aaa5a5615483382572b5d5c24c5e5b",
"assets/assets/images/Telegram.png": "69e1f4eb64086882586796aeb11b016b",
"assets/assets/images/photo_2021-10-05_12-37-55.jpg": "66954cd2b3fe6d7297abcb61f0570c98",
"assets/assets/images/1535467604961.jpeg": "af7e6a4095b2ca7337c1faa39c45ea28",
"assets/assets/images/FKNlhKZUcAEd7FY.jfif": "b2ed3776e0005082083107ae24bbdd0c",
"assets/assets/images/omdena.jpeg": "049c553d27c8c19cbaf2b8c5c627da6e",
"assets/assets/images/linkedin2.png": "c3fcc390427d68b89647e834adf7fc87",
"assets/assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/288728953_3105534909776009_4860460118475979015_n.jpg": "38a478817cf3bf890b023675cad20f94",
"assets/assets/images/photo_2022-09-06_22-02-04.jpg": "aed76501f64eee384da54834db725382",
"assets/assets/images/Screenshot%25202022-06-14%2520192516.png": "b538c30686dbda718751c63fe26856ac",
"assets/assets/images/flutter.png": "dfbf343caa613c043c55639b66153a8d",
"assets/assets/images/2048px-Coursera-Logo_600x600.svg.png": "7ef8c1539a39d15676a501c0fa351644",
"assets/assets/images/download%2520(1).png": "d6c04fe28b4125a0d8c0c1e674cf4bd3",
"assets/assets/images/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/assets/images/FKNlhKZUcAEd7FY.png": "f36c16c89626e593a95531ee9c81bc13",
"assets/assets/images/rbcs.png": "0cf73d355885b0bbd746f8e616ab4218",
"assets/assets/images/Annotation%25202022-02-05%2520163210.png": "a4707a7a5cda8514b20b4dc1e7456e19",
"assets/assets/images/linux.jpg": "9d4c1a783703c00c93983fa2676fe599",
"assets/assets/images/Free%2520Workstation%2520Person%2520Holding%2520Smartphone%2520Mockup.jpg": "ff54b60dec52cbc00872d26a96853f80",
"assets/assets/images/contact_icon.png": "856b95eb03d60fa2576140e4c3d034b9",
"assets/assets/images/1519895156650.jpeg": "e5cd5ab56b6ac81538614c8c54ef40e6",
"assets/assets/images/R%2520(3).png": "c963626c145ea660ba7ceee666789c0a",
"assets/assets/images/Screenshot%25202022-06-14%2520192632.png": "03422f9abf3d6aa67341432635e1bd61",
"assets/assets/images/ui.png": "6ca82a6c70f80fd75c56b1fe66caa180",
"assets/assets/images/hhh.png": "157914b428346825e1e35e9b629213f1",
"assets/assets/images/heart.jpeg": "2dc1895a0bff138afce00b06ed52b3c0",
"assets/assets/images/recent_work_bg.png": "531a8461fd1ec42f03f4cfb891790635",
"assets/assets/images/IMG5.jpg": "97733209b5c2f180e76295d56dcda89d",
"assets/assets/images/Intreaction_design.png": "98e873648b7c2d3062556f2f8c09d4c3",
"assets/assets/images/desktop.png": "d4794e3ddcb4fce9a2c12246e3b4d8a7",
"assets/assets/images/Popular-facebook-Logo-png.png": "78c9e2c4fd8ad0edf12797f0a64a3185",
"assets/assets/images/bg.jpeg": "c6449162dc3940daa640a43101cfd66c",
"assets/assets/images/Annotation%25202022-02-05%2520162933.png": "eb712e490a741e33044138249139c9c5",
"assets/assets/images/Screenshot%25202022-06-14%2520154831.png": "a41325c491e031a93c8674a830309bf8",
"assets/assets/images/meeeeeeeee.jpg": "fd6191e47c9bbd6e904290e0acdaf0eb",
"assets/assets/images/blood.jpeg": "6c857d6cb79d22670efa5467a6b89bea",
"assets/assets/icons/kaggle_logo_icon_168473.svg": "bead6da1a7ab4082320c8d9b452fc406",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"styles.css": "ce7e8a1cf9f61f9694bf385dd12f7959"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
