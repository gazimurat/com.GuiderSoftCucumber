@amazontum @paralel2
Feature: US102 Background ile Amazon search testi

  Background: amazon sayfasina gider
    Given kullanici amazon sayfasına gider
  @amazonspace
    Scenario: TC01_Amazon Iphone search testi
      And iphone icin arama yapar
      Then sonuclarin iphone icerdiğini test eder
@amazoncorona
      Scenario: TC02_Amazon Teapot search testi
        And teapot icin arama yapar
        Then sonuclarin tea pot icerdiğini test eder
  @amazonspace
        Scenario: TC_03 Amazon Flower search testi
          And flower icin arama  yapar
          Then sonuclarin  flower icerdigini  test eder