public class OlderAccountsUtility {
  public static void updateOlderAccounts() {
    // Get the 5 oldest accounts
    Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
    // loop through them and update the Description field
    for (Account acct : oldAccounts) {
      acct.Description = 'Heritage Account';
    }
    // save the change you made
    update oldAccounts;
  }
}

/**
 * Model Answer
 */
// // Apex classes should declare a sharing model if DML or SOQL is used
// public with sharing class OlderAccountsUtility {
//   public static void updateOlderAccounts() {
//     // Validate CRUD permission before SOQL/DML operation
//     if (!Schema.sObjectType.Account.isAccessible() && !Schema.sObjectType.Account.isUpdateable()) {
//       return;
//     }
//     /**
//      * Developers should always use a SOQL for loop to process query results that return many records,
//      * to avoid the limit on heap size.
//      */
//     Account[] oldAccounts = new List<Account>();
//     for (Account acct : [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5]) {
//       acct.Description = 'Heritage Account';
//       oldAccounts.add(acct);
//     }
//     update oldAccounts;
//   }
// }

