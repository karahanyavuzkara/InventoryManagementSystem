sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/karahan/ims/inventoryfioriui/test/integration/FirstJourney',
		'com/karahan/ims/inventoryfioriui/test/integration/pages/ProductsList',
		'com/karahan/ims/inventoryfioriui/test/integration/pages/ProductsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/karahan/ims/inventoryfioriui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage
                }
            },
            opaJourney.run
        );
    }
);