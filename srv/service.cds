using { com.sales as sl } from '../db/schema';

service SalesService {
    entity SalesOrderHeader as projection on sl.SalesOrderHeader;
}