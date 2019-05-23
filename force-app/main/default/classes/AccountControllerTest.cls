@isTest
private class AccountControllerTest {
 
    /**
      * @author Jitendra kumar , 23 may 2019
      * Demo T
      */
      @testSetup static void setup() {
        // Create common test accounts
        List<Account> testAccts = new List<Account>();
        for(Integer i=0;i<2;i++) {
            testAccts.add(new Account(Name = 'Demo'+i));
        }
        insert testAccts;
    }
 
      static testMethod void testmeth1(){
        list<account> accList = new list<account>();
         
        //Test that Records are available
        accList  = AccountController.findAccounts('Demo');
        system.assertequals(accList.size(),2);
         
    }     
}