namespace com.sales;
using { cuid, managed } from '@sap/cds/common';

entity SalesOrders : cuid, managed {
    salesOrderType           : String;
    salesOrganization        : String;
    distributionChannel      : String;
    division                 : String;
    soldToParty              : String;
    status                   : String;
    requestedDeliveryDate    : Date;
    purchaseOrderByCustomer  : String;
    soError                  : String;
    s4hanaSoNo               : String;
}
