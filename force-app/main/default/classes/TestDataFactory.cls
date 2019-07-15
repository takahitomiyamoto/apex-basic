public class TestDataFactory {
  public static void insertAccount(String name) {
    Account account = new Account();
    account.Name = name;
    insert account;
  }
}
/**
 * Model Answer
 */
// // Apex classes should declare a sharing model if DML or SOQL is used
// public with sharing class TestDataFactory {
//   public static void insertAccount(String name) {
//     // Validate CRUD permission before SOQL/DML operation
//     if (!Schema.sObjectType.Account.isCreateable()) {
//       return;
//     }
//     Account account = new Account();
//     account.Name = name;
//     insert account;
//   }
// }
