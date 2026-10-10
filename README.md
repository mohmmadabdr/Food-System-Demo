# سكينة وطماطم — Restaurant Ordering Demo

واجهة HTML/CSS/JavaScript تجريبية، تعمل من المتصفح دون خادم أو قاعدة بيانات.

## التشغيل
- على Windows: انقر مرتين على `start-demo.bat` (يتطلب Python)؛ سيفتح الموقع على `http://127.0.0.1:8000/index.html`.
- أو افتح الطرفية داخل مجلد المشروع وشغّل `python -m http.server 8000`، ثم افتح `http://127.0.0.1:8000/index.html`.
- يمكن فتح `index.html` مباشرة، لكن تشغيل خادم محلي أبسط وأكثر موثوقية للتخزين والتنقل.
- الصفحات: `index.html`، `menu.html`، `cart.html`، `checkout.html`، `orders.html`، `admin.html`.
- لا توجد بيانات دخول للوحة الإدارة؛ فهي لوحة عرض أمامية وليست نظام صلاحيات حقيقياً.

## الوظائف المتاحة
- قائمة الطعام مع البحث والتصنيفات.
- سلة مرتبطة بين الصفحات وتبقى محفوظة عند إعادة تحميل المتصفح.
- إنشاء طلب تجريبي وتتبّع حالته.
- إدارة الطلبات والأصناف والأسعار والتوفّر من لوحة الإدارة.
- ضبط بيانات الاتصال ورسوم التوصيل وبيانات CliQ ورقم الدفع الإلكتروني من لوحة الإدارة؛ اسم العلامة التجارية ثابت.
- مساعد واتساب يجهّز الرسالة وينقل المستخدم إلى `wa.me` بعد ضبط رقم صالح.
- البيانات تحفظ في `localStorage` على نفس المتصفح والجهاز فقط.

## التخزين المحلي
- `gourmetOS_v2_products`: المنتجات.
- `gourmetOS_v2_cart`: السلة.
- `gourmetOS_v2_orders`: الطلبات.
- `gourmetOS_v2_settings`: إعدادات المطعم.

يمكن مسح التخزين من إعدادات المطوّر في المتصفح لإعادة التجربة. بيانات العينة تجريبية وغير مرسلة لأي جهة.

## واتساب
افتح لوحة الإدارة ← إعدادات المطعم، وأدخل رقم واتساب مع رمز الدولة دون `+` أو مسافات، ثم احفظ. مساعد واتساب في هذه النسخة ليس بوتاً متصلاً بخادم ولا يقرأ الرسائل الواردة؛ بل ينشئ نصاً جاهزاً ويفتح محادثة واتساب.

## حدود النسخة التجريبية
- لا يوجد Backend أو قاعدة بيانات مشتركة بين الأجهزة.
- لا يوجد تسجيل دخول أو حماية لصلاحيات الإدارة.
- خيارات CliQ ورقم الدفع الإلكتروني تعرض بيانات التحويل وتسجل الطلب للمتابعة، لكنها لا تتحقق من وصول المبلغ تلقائياً ولا تتصل ببوابة دفع حقيقية.
- صور الأصناف وخطوط الويب تعتمد على روابط خارجية من التصميم الأصلي وقد تحتاج اتصال إنترنت.

محتويات `original-designs/` تحتفظ بملفات HTML ولقطات الشاشة الأصلية كمرجع.


## التحديث الإضافي
- Hero في الرئيسية بعرض الشاشة الكامل مع تجاوب للهواتف.
- زر تبديل لغة تجريبي إلى الإنجليزية لبعض النصوص الشائعة.
- صفحة `contact.html` للاتصال المباشر وواتساب؛ أضف رقم الهاتف وواتساب من إعدادات لوحة الإدارة.
- تبويب «تصنيفات الطعام» لإضافة تصنيف بمعرّف إنجليزي واسم عربي/إنجليزي. التصنيفات محفوظة في `localStorage` وتظهر في نموذج إضافة/تعديل الأصناف.
- ما يزال المشروع نموذج واجهات محلياً؛ لا توجد قاعدة بيانات مشتركة أو نظام دخول إداري.


## V6 updates
- Added a full-width automatically rotating popular-dishes showcase (up to three products, ranked by saved order quantities; falls back to featured items when no orders exist).
- Added per-product cash-value or percentage discounts in the admin product editor, with calculated sale prices reflected in the menu, cart, checkout, order snapshots, and printable menu.


## V7 updates
- Rebranded the storefront to **سكينة وطماطم** with a custom tomato-and-knife SVG mark; the brand name is no longer editable from admin settings.
- Replaced the WhatsApp helper text mark with the WhatsApp icon.
- Added a moving announcement ticker that displays product discounts and configured phone/email contact details.
- The desktop navigation hides the mobile hamburger control; it appears only at small breakpoints.
- Category IDs are generated automatically from the optional English category name, so the category form has only one English-name field.
- Added a delete button inside the product editor.
- Added CliQ and electronic-wallet/payment-number options at checkout, configuration fields in admin settings, optional transfer reference, and order tracking/admin details. These are demo flows and do not verify transfers automatically.


## V10 repair: seed data and rendering
- Fixed the language-switching routine. It no longer creates invalid `dataset` property names for `aria-label`, which previously interrupted initialization before the products and Hero image could render.
- Added a one-time V10 seed migration that repairs stale/empty V9 browser data and adds missing seed products without overwriting custom products. The menu contains 26 starter products: 10 original dishes and 16 newly added products across 14 food categories.
- Added a local food illustration fallback for the Hero and product imagery when externally hosted photo URLs are unreachable.
- Added a storage fallback for browsers that restrict `localStorage` when pages are opened directly as local files. Run `start-demo.bat` for more reliable multi-page navigation and storage.


## V11 visual and quality review
- Refined the palette, muted text contrast, spacing, button sizes, borders, and focus outlines for a calmer visual hierarchy.
- Fixed contrast on the “Explore menu” actions and the hero primary call-to-action.
- Reduced the floating WhatsApp action to an icon-only circular control on narrow screens so it covers less menu content.
- The top ticker no longer displays a missing-phone placeholder; contact items appear only when configured.
- The popular-dishes carousel respects the operating system’s reduced-motion preference.
- Added category-specific local SVG fallbacks for product, cart, admin, print, and popular-dish images.
- English menu search now includes translated product names, descriptions, and category labels.
- Tested key storefront pages at desktop, laptop, tablet, and mobile widths. The test browser blocked internet images by design; local fallback images rendered successfully.


## V12 — map repair and customer order tracking
- Fixed the delivery-map tile URL to use the canonical `https://tile.openstreetmap.org/{z}/{x}/{y}.png` endpoint rather than the `{s}.tile.openstreetmap.org` subdomains. The OSM tile service requests the canonical hostname and a valid HTTP referrer; run the demo with `start-demo.bat` / `http://127.0.0.1:8000/` instead of opening pages directly via `file://`.
- Added a map-tile loading warning while preserving manual point selection and the text-address alternative if a network or tile-service issue persists.
- Added responsive order progress steps on `orders.html`: order received, preparation, ready, driver en route, and delivered; pickup orders use the relevant shorter set of steps. Cancelled orders display an explicit cancellation state.
- Status labels now reflect delivery versus pickup, and the tracking card updates when the admin changes a status (including across tabs on the same browser profile via local storage).
- This remains a local demo: order data is not shared across devices or with a real restaurant server.

\n\n## V13 — Contact inquiry form\n- Added a responsive inquiry form to `contact.html` with name, reply email, inquiry topic, and message fields.\n- Form submission builds an email addressed to the restaurant email configured in Admin → Settings and opens the visitor's default email application using `mailto:`. The visitor must confirm sending in that app.\n- This is appropriate for a front-end demo; actual server-side delivery without an email app requires a backend or an email form provider. No messages are stored or sent automatically by this local demo.\n
## V14 — Today-only dashboard and order filters
- The admin overview counts orders created today only, using the `Asia/Amman` time zone. Active-order count and order value are limited to today's orders; cancelled orders are excluded from revenue.
- The order-management page opens with a “Today's orders” filter and includes a one-click switch to all orders. The selected filter remains in effect after changing an order status.
- Order timestamps shown in customer tracking and admin order cards use Jordan local time.
- Refreshed the dashboard with a daily summary panel, clearer metric cards, responsive filter controls, and more helpful empty states. Existing order statuses, detail modal, and tracking behavior remain in place.
