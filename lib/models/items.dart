class Item {
    String id;
    String shortdesc;
    String description;
    double price;
    String imageLocation;

    Item(
        {
            required this.id,
            required this.shortdesc,
            required this.description,
            required this.price,
            required this.imageLocation
        }
    );
}