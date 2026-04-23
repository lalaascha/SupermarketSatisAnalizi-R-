
# Süpermarket Satış Analizi (R)
Proje, bir süpermarket zincirinin satış verilerini analiz ederek iş akışına dair birkaç içgörü sunar.

## Proje Hakkında
Bu çalışmada, R programlama dilinin temel (Base R) fonksiyonları kullanılarak veri setindeki örüntüler incelendi. Özellikle müşteri tercihleri ve satış performansına odaklanılmıştır.

## Kullanılan Teknikler
- **Filtreleme:** `[]` ve `==` operatörleri ile veri madenciliği.
- **Gruplama:** `tapply` fonksiyonu ile özet istatistikler.
- **Görselleştirme:** Temel `barplot` fonksiyonları.

## Analiz Soruları ve Bulgular
- **Soru:** En çok satış yapan şehir hangisi? 
- **Bulgu:** Analiz sonucunda en yüksek cironun [Naypyitaw] şehrinde olduğu görülmüştür.
- **Soru:** Müşteriler en çok hangi ödeme yöntemini tercih ediyor?
- **Bulgu:** E-wallet, toplam gelirde büyük bir paya sahiptir.

## Dosya Yapısı
- `Analiz.R`: Analiz kodlarını içeren R scripti.
- `SuperMarketAnalysis.csv`: Ham veri seti.
- `*.png`: Analizden elde edilen grafikler.
