namespace com.sales;


entity SalesOrderHeader {
  key ID                  : UUID;
  SalesOrderType          : String;
  SalesOrganization       : String;
  DistributionChannel     : String;
  Division                : String;
  SoldToParty             : String;
  Status                  : String;
  RequestedDeliveryDate   : DateTime;
  PurchaseOrderByCustomer : String;
  SO_Error                : String;
  S4HANA_SONo             : String;
}