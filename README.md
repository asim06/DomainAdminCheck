# DomainAdminCheck
Powershell script ile Domain Admin grup içeresinde şüpheli yükseltmelere karşı hazırlanmıştır.

## Örnek Adımlar
statik olarak domain admin grup üyeleri tanımlanır.(SamAccountName)
Statik tanımlı üyeler ile sürekli karşılaştırma yapılarak bunların dışında olanlar otomatik olarak silinir ve loglanır.

### Loglama

Şüpheli kullanıcı ismi, tarih şeklinde logs.txt dosyasına yazılır
