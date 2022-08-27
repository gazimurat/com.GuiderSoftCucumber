Feature: US107 Scenario Outline ile Amazon testleri

  Scenario Outline: TC10 Amazonda bir listenin tüm elementlerini aratmak
    Given kullanici "AmazonURL" sayfasina gider
    Then "<aranacakEleman>" icin arama yapar
    And sonuclarin "<aranacakEleman>" icerdiğini test eder
    Then sayfayı kapatır



    Examples:
      |aranacakEleman|
      |car|
      |water |
      |java|
      |javascript|
      |Flutter|

