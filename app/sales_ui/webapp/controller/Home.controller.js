sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator"
], (Controller, Filter, FilterOperator) => {
    "use strict";

    return Controller.extend("com.sales.salesui.controller.Home", {
        onInit() {
        },
        onFilterSelect: function (oEvent) {
            const oSelectedTab = oEvent.getParameter("item");
            const sKey = oSelectedTab.getKey();
            var aFilters = []
            if (sKey === "Created") {
                var oFilter = new Filter("status", "Contains", "Successfully Created");
                aFilters.push(oFilter);
            }
            else if (sKey === "Processed") {
                var oFilter = new Filter("status", "Contains", "Yet to be processed");
                aFilters.push(oFilter);
            }
            else if (sKey === "Error") {
                var oFilter = new Filter("status", "Contains", "Error");
                aFilters.push(oFilter);
            }
            var oTable = this.byId("idSalesOrdersTable");
            var oBinding = oTable.getBinding("items");
            oBinding.filter(aFilters);

        }
    });
});