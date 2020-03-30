class Infografias {


  List<Infografia> items = new List();

  Infografias();


  Infografias.fromJsonList( List<dynamic> jsonList ) {

    if( jsonList == null ) return;

    for ( final item in jsonList ) {

        final infografia = new Infografia.fromJsonMap(item);

        items.add( infografia );
    }

  }

}

class Infografia {
  String id;
  String tipoInfografiaId;
  String descripcion;
  String url;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;

  Infografia({
    this.id,
    this.tipoInfografiaId,
    this.descripcion,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Infografia.fromJsonMap( Map<String, dynamic> json ) {

    id                  = json['id'];     
    tipoInfografiaId    = json['tipo_infografia_id'];
    descripcion         = json['descripcion'];
    url                 = json['url'];
    createdAt           = json['created_at'];
    updatedAt           = json['updated_at'];
    deletedAt           = json['deleted_at'];

  }

  getInfoImg(){

    if( url == null ){
      
      return 'https://cdn11.bigcommerce.com/s-hcp6qon/stencil/01eb2250-b30a-0137-ba33-0242ac110046/icons/icon-no-image.svg';

    }else {

      return 'http://contingencia.saludchiapas.gob.mx/images/infografias/$url';

    }

  }


}
