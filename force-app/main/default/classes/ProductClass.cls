public class ProductClass {
    public static void Products_Price(){
        list<String> products =new list<String>();
        products.add('Mouse');       
        products.add('Laptop');
        products.add('White Board');
        products.add('Marker');
        products.add('Chairs');
        products.add('Monitors');  
		System.debug(products);
        Map<string,Integer> price = new map<string,Integer>();
		price.put('Mouse',900);
        price.put('Laptop',1200);
		price.put('White Board',1500);
		price.put('Marker',1800);
		price.put('Chairs',2400);
		price.put('Monitors',3500);
        System.debug(price);
          
        for(String proPri:products){
                decimal disprice ;
		integer com= price.get(proPri);  
            if(com>0 && com <=1000){
                disprice=(com*0.10);
            }
            else if(com>=1000 && com <=1500){
                disprice=(com*0.25);
            }
            else if(com>=1500 && com <=3000){
                disprice=com*0.40;
            }
            else{
                disprice=com*0.50;
            }
            system.debug(disprice);
            
        }

    }
}