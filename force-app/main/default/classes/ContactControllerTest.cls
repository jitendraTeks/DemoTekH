@isTest
private class ContactControllerTest {
 
    /**
      * @author Jitendra kumar , 23 may 2019
      * Demo T
      */

      @testSetup static void setup() {
        // Create common test contacts
        List<contact> testCon = new List<contact>();
        for(Integer i=0;i<2;i++) {
            testCon.add(new Contact(FirstName='Demo'+i,LastName='Demo'));
        }
        insert testCon;
    }
    @isTest static void testmeth1(){
              
        //Test that Records are available
       List<contact> conList = ContactController.findContacts('Demo');
        system.assertequals(conList.size(),2);
         
    }  
    @isTest static void testmeth2(){
              
        //Test that Records are available
      List<contact>  conList2 = ContactController.getContactList();
        system.assertequals(conList2.size(),2);
         
    }  
    @isTest static void testmeth3(){
              
        //Test that Records are available
        contact con = ContactController.getSingleContact();
        
         
    }     
}