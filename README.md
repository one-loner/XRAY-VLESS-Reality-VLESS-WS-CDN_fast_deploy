# XRAY-VLESS-Reality&VLESS-WS+CDN fast deploy   
## EN   
This repository will allow you to quickly deploy VLESS+Reality and VLESS-WS on your VPS.     
You will need a VPS with a domain name. The domain name must be linked to a CDN (I recommend using Cloudflare)     
VLESS-Reality disguises your traffic as Whatsapp traffic, and VLESS-WS as traffic to your fake site (index.html)      
      
If you do not have a domain that is linked to Cloudflare, as well as the desire or ability to get it, I recommend using the script that raises VLESS + Reality from [this repository](https://github.com/one-loner/XRAY-VLESS-Reality_one-click-deploy)       
Both services rise on port 443. The script configures the server, and also generates links and QR codes for clients.       
Important: the script modifies the original configuration files, their original versions will be stored with the .original extension      
       
If you reinstall the container, delete the Caddyfile config.json haproxy.cf, and also rename the files with the .original extension, deleting this extension.      
        
I recommend using a CDN in order to:       
     
- Traffic disguised as Whatsapp and traffic to your site do not go to the same IP from the client side. For traffic censorship systems, this may seem suspicious.     
      
- Forwarding through CND will also be useful if your VPS is blocked by IP address.     
        
If you do not have a domain name linked to the CDN, I recommend deploying the usual VLESS+Reality. You can find it in this repository.    
     
Installation:     
- Run the ./install.sh script as root.     
- After the request from the installation script, enter your domain name, which is linked to the CDN - Wait for the installation to complete and load the generated links into your client for VLESS     
     
# RU     
Данный репозиторий позволит вам быстро развернуть на своём VPS VLESS+Reality и VLESS-WS.     
Вам потребуется VPS с доменным именем. Доменное имя должно быть прилинковано к CDN (Рекомендую использовать Cloudflare)   
VLESS-Reality маскирует ваш трафик под трафик Whatsapp, а VLESS-WS под трафик до вашего фейкового сайта (index.html)  
Если у вас нет домена, который прилинкован к Cloudflare, а так же желания или возможности его получить, рекомендую воспользоваться скриптом поднимающим VLESS + Reality из [этого репозитория](https://github.com/one-loner/XRAY-VLESS-Reality_one-click-deploy)     
Оба сервиса поднимаются на 443 порту. Скрипт настраивает сервер, а так же генерирует ссылки и QR-коды для клиентов.   
Важный момент: скрипт изменяет исходные файлы конфигурации, их огигинальные версии будут храниться с разрешением .original  
Если вы будете переустанавливать контейнер, то удалите Caddyfile config.json haproxy.cf, а так же переименуйте файлы с рашширение .original, удалив данное расширение. 
Я рекомендую использовать CDN для того чтобы:   
 - Трафик замаскированный под Whatsapp и трафик до вашего сайта не шёл на один и тот же IP со стороны клиента. Для систем цензурирования трафика это может показаться подозрительным.   
 - Проброс через CND так же будет полезен, если ваш VPS заблокируют по IP адресу.   
   
Если у вас нет доменного имени, прилинкованного к CDN, я рекомендую разворачивать обычный VLESS+Reality. Его вы можетенайти в данном репозитории.   
   
Установка:    
 -  Запустить скрипт ./install.sh от root.   
 -  После запроса от установочного скрипта, ввести ваше доменное имя, которое прилинковано к CDN    
 -  Дождаться окончания установки и подгрузить сгенерированные ссылки в ваш клиент для VLESS    
       
# فارسی
این مخزن به شما این امکان را می دهد که به سرعت VLESS+Reality و VLESS-WS را در VPS خود مستقر کنید.         
شما به یک VPS با نام دامنه نیاز دارید. نام دامنه باید به یک CDN پیوند داده شود (من توصیه می کنم از Cloudflare استفاده کنید)      
VLESS-Reality ترافیک شما را به عنوان ترافیک Whatsapp و VLESS-WS به عنوان ترافیک وب سایت جعلی شما (index.html) پنهان می کند.      
اگر دامنه ای ندارید که به Cloudflare پیوند داده شده باشد، و همچنین تمایل یا فرصتی برای دریافت آن ندارید، توصیه می کنم از اسکریپتی استفاده کنید که VLESS + Reality را از [این مخزن] افزایش می دهد (https://github.com/one- loner/XRAY-VLESS-Reality_one -click-deploy)      
هر دو سرویس روی پورت 443 اجرا می شوند. اسکریپت سرور را پیکربندی می کند و همچنین لینک ها و کدهای QR را برای مشتریان ایجاد می کند.     
نکته مهم: اسکریپت فایل های پیکربندی اصلی را تغییر می دهد، نسخه های اصلی آنها با وضوح اصلی ذخیره می شود.     
اگر کانتینر را دوباره نصب کردید، Caddyfile config.json haproxy.cf را ​​حذف کنید، و همچنین نام فایل‌های با پسوند .original را تغییر دهید و این پسوند حذف شود.    
توصیه می کنم از CDN برای موارد زیر استفاده کنید:     
 - ترافیک مبدل به Whatsapp و ترافیک سایت شما به یک IP از سمت مشتری نمی رود. برای سیستم های سانسور ترافیک، این ممکن است مشکوک به نظر برسد.     
 - اگر VPS شما توسط آدرس IP مسدود شده باشد، ارسال از طریق CND نیز مفید خواهد بود.      
       
اگر نام دامنه مرتبط با CDN ندارید، توصیه می‌کنم VLESS+Reality معمولی را نصب کنید. می توانید آن را در این مخزن پیدا کنید.     
     
نصب و راه اندازی:     
 - اسکریپت ./install.sh را به صورت روت اجرا کنید.     
 - پس از درخواست از اسکریپت نصب، نام دامنه خود را که به CDN لینک شده است وارد کنید     
 - منتظر بمانید تا نصب کامل شود و لینک های تولید شده را در کلاینت خود برای VLESS بارگذاری کنید     

# Türkmenler
Bu ammar size VLESS + Reality we VLESS-WS-ni çalt ýerleşdirmäge mümkinçilik berer.    
Size domen ady bolan VPS gerek bolar. Domen ady CDN bilen baglanyşykly bolmaly (Cloudflare ulanmagy maslahat berýärin)      
VLESS-Reality traffigiňizi Whatsapp traffigi, VLESS-WS bolsa ýasama web sahypaňyza traffik hökmünde görkezýär (index.html)      
“Cloudflare” bilen baglanyşykly domeniňiz ýok bolsa, şeýle hem birini almak islegi ýa-da mümkinçiligi ýok bolsa, [bu ammardan] (https://github.com/one-) VLESS + Reality ýokarlandyrýan skripti ulanmagy maslahat berýärin. ýalňyz / XRAY-VLESS-Reality_one-basyň-ýerleşdiriň)     
Iki hyzmat hem 443-nji portda işleýär. Scriptazgy serweri düzýär we müşderiler üçin baglanyşyklar we QR kodlary döredýär.       
Möhüm nokat: skript asyl konfigurasiýa faýllaryny üýtgedýär, asyl nusgalary .original durulykda saklanar      
Konteýni täzeden gurnasaňyz, Caddyfile config.json haproxy.cf pozuň we bu giňeltmäni aýyryp, .original giňeltmesi bilen faýllaryň adyny üýtgediň.    
CDN ulanmagy maslahat berýärin:      
 - “Whatsapp” diýlip atlandyrylan traffik we sahypaňyza traffik müşderi tarapyndan şol bir IP-ä gitmedi. Trafik senzura ulgamlary üçin bu şübheli bolup görünýär.     
 - VPS IP adresiňiz bilen bloklanan bolsa, CND arkaly ugratmak hem peýdaly bolar.     
     
CDN bilen baglanyşdyrylan domen adyňyz ýok bolsa, yzygiderli VLESS + Reality ýerleşdirmegi maslahat berýärin. Bu ammarda tapyp bilersiňiz.     
     
Gurnama:      
 - ./install.sh skriptini kök hökmünde işlediň.      
 - Gurmak skriptinden haýyşdan soň, CDN bilen baglanyşykly domen adyňyzy giriziň     
 - Gurluşyň tamamlanmagyna we döredilen baglanyşyklary VLESS üçin müşderiňize ýükläň     
