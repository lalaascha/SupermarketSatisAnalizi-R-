#### SÜPERMARKET STRATEJİK ANALİZ PROJESİ ####

#Veriyi Okumak
df = read.csv("SuperMarketAnalysis.csv")

#Veri Özeti
head(df)

#Şehirlerin toplam satış miktarı
sehir_top = tapply(df$Sales, df$City, sum)

#Şubelerin (Branch) Performans Karşılaştırması
sube_top = tapply(df$Sales,df$Branch, sum)

#Müşterilerın en çok kullandığı ödeme yöntemi
odeme_sayilari <- table(df$Payment)

#Nakit ödeme ve satışı 500 birimden yüksek olan işlemler
nakit_satis = df[df$Payment == "Cash" & df$Sales > 500, ]
head(nakit_satis$Sales)

#En yüksek müşteri puanına sahip ürün kategorisi
kat_puan = tapply(df$Rating, df$Product.line, mean)
kat_puan

#Brüt Gelir toplamı en yüksek olan ödeme yöntemi
yuksek_odeme = tapply(df$gross.income, df$Payment, sum)
yuksek_odeme

#Kadın ve Erkek müşterilerin ortalama harcaması
cins_ort = tapply(df$Sales, df$Gender, mean)

#Sadece 'Elektronic accessories' kategorisinden satışlar
elektronik = df[df$Product.line == "Electronic accessories",]
ort_elektronik = mean(elektronik$Sales) #elektronik aksesuarların ortalama satış tutarı

## GÖRSELLEŞTİRME ##
library(ggplot2)

#Şehirlerin Satış Grafiği
barplot(sehir_top, main="Şehir Bazlı Satışlar", col="lightblue", ylab="Satış Tutarı")

#Kategorilerin Müşteri Puanları
barplot(kat_puan, main="Kategori Puanları", col="lightgreen", las=2)