# Flappy-Bird-AI

### Onderzoek Neural Networks/Machine Learning

Ik moet allereerst even melden dat ik deze opdracht al had afgerond voordat ik wist dat we ons onderzoek allemaal moesten bijhouden en noteren. Hier kon ik ook moeilijk iets aan doen aangezien ik er al in de vakantie mee bezig was en omdat ik niet kan tijdreizen is dit dus meer een soort post-mortem waarbij ik het werkproces samen vat, en mijn bronnen van informatie vermeld.

Voordat we dit als opdracht kregen was ik al voor een korte tijd bezig met neural networks. Ik had zelfs al meerdere modellen
gemaakt, maar die waren aan het einde van de dag mislukt vanwege het gebrek aan back-propagation. 'Back-propagation' is het proces
waarbij we de relevante parameters, oftewel de 'weights' en de 'bias', aanpassen om dichterbij het antwoord te komen waar we naartoe
willen. Hierover leg ik later meer uit voor het belang van context.

Bij mijn originele (eerste) onderzoek zocht ik eerst algemene informatie op over AI, Machine Learning en uiteindelijk Neural Networks om
een goed idee te krijgen waar ik aan begon. Ik las artikels en keek youtube video's voor informatie. Toen ik een duidelijk beeld had van
wat het inhield, ging ik me meer verdiepen in de berekeningen achter neural networks. Ik begon tutorial's te volgen en te experimenteren
in Java. Van het experimenteren en het kijken/lezen van tutorials had ik (samengevat) uiteindelijk het volgende geleerd:

Een neural network is een leer-algorithme. Het algoritme neemt bepaalde informatie op, maakt met gebruik van parameters genaamd 
de 'weights' en 'bias' een schatting over waar die informatie naar toe wijst, en vergelijkt die schatting dan met het werkelijke antwoord.
Vervolgens word het verschil tussen de schatting en het werkelijke antwoord berekent en word het gebruikt om de parameters (weights & bias)
mee aan te passen. Wanneer we dit process dan weer herhalen met de nieuwe aangepaste weights & biases, zullen we bij de nieuwe schatting
een preciezer resultaat krijgen. Herhaal dit proces opnieuw en opnieuw, en uiteindelijk zal het algoritme een accuraat idee hebben wat 'wat' is
gebaseerd op alle informatie die het heeft ontvangen.

Het meeste van wat ik hierboven beschrijf wist ik voordat ik begon aan mijn (nu geslaagde) neural network. Dit komt omdat naar
mijn ervaring, een neural network en de situatie waarin het is geplaatst, van top tot teen gepland en uitgewerkt moet zijn voordat
het word gerealiseerd. De wiskunde erachter is gemakkelijk fout te doen (wanneer je in ieder geval geen achterliggende code gebruikt)
en slordigheid kan fataal zijn voor de kwaliteit van je model.

Het was uiteindelijk een erg leerzaam project en ik ben ook van plan om mij in dit onderwerp ook nog veel verder te gaan verdiepen.
