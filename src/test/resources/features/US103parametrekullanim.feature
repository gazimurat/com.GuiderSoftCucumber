Feature: Parametreli stepdefinition oluşturma
@parametre @paralel1
  Scenario: TC_04 parametre kullanımı
  Given kullanici amazon sayfasına gider
    And "macbook" icin arama yapar
    Then sonuclarin "macbook" icerdiğini test eder
    And sayfayı kapatır

