using { com.sales as sl } from '../db/schema';

service SalesService {
    entity SalesOrders as projection on sl.SalesOrders;
}