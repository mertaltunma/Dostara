import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'veri_toplama_model.dart';
export 'veri_toplama_model.dart';

class VeriToplamaWidget extends StatefulWidget {
  const VeriToplamaWidget({super.key});

  @override
  State<VeriToplamaWidget> createState() => _VeriToplamaWidgetState();
}

class _VeriToplamaWidgetState extends State<VeriToplamaWidget> {
  late VeriToplamaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VeriToplamaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
            child: Text(
              'Geri',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Mukta',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Veri Toplama',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1723987135977-ae935608939e?w=500&h=500',
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Veri Toplama Politikası',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              '[Uygulama Adı] olarak, kullanıcılarımızın kişisel verilerini toplarken, onların gizliliğini korumak ve yasalara uygun şekilde hareket etmek önceliğimizdir. Bu Veri Toplama Politikası, topladığımız verilerin türlerini, bu verilerin nasıl kullanıldığını ve verilerinizi nasıl koruduğumuzu açıkça belirtir.\n\nUygulamanızı kullanarak, aşağıdaki veri toplama koşullarını kabul etmiş olursunuz.\n\n1. Hangi Veriler Toplanır?\n[Uygulama Adı], kullanıcılarımızın deneyimini geliştirmek, hizmet sağlamak ve yasal yükümlülüklerimizi yerine getirmek amacıyla çeşitli kişisel veriler toplar. Bu veriler aşağıdaki gibi gruplandırılabilir:\n\nA. Kişisel Bilgiler\nUygulamayı kullanarak kaydolduğunuzda veya hesap oluşturduğunuzda, aşağıdaki kişisel bilgileri toplarız:\n\nAd ve Soyad\nE-posta Adresi\nTelefon Numarası\nAdres Bilgisi (isteğe bağlı)\nDoğum Tarihi (isteğe bağlı)\nB. Hayvan Bilgileri\nSahiplendirme veya kaybolan hayvan ilanları oluşturduğunuzda, hayvanla ilgili şu bilgileri toplayabiliriz:\n\nHayvanın Türü ve Cinsi\nYaş, Cinsiyet ve Sağlık Durumu\nFotoğraflar veya Videolar\nİletişim Bilgileri (hayvanla ilgili bulunan veya sahiplendirilen kişiye ait)\nC. Kullanım Verileri\nUygulamanın işlevselliğini iyileştirmek için, kullanıcılarımızın uygulama içindeki hareketleri ve etkileşimleri hakkında anonim veriler toplarız:\n\nIP Adresi\nCihaz Türü ve İşletim Sistemi\nUygulama Kullanım Süresi\nUygulama Versiyonu\nUygulama İçi Etkileşimler (tıklamalar, sayfa görüntülemeleri, gezinme alışkanlıkları)\nD. Çerezler ve İzleme Teknolojileri\nUygulama içinde, kullanıcı deneyimini iyileştirmek ve kişiselleştirilmiş hizmetler sunmak amacıyla çerezler ve benzeri izleme teknolojileri kullanabiliriz. Bu, kullanıcıların tercihlerini hatırlamak ve uygulama içindeki gezinme davranışlarını analiz etmek için kullanılır.\n\nE. Lokasyon Bilgisi (isteğe bağlı)\nKullanıcıların izniyle, hayvanların kaybolduğu yer veya sahiplendirilmek istenen hayvanların konumlarına dair lokasyon bilgileri de toplanabilir.\n\n2. Verilerin Toplanma Yöntemleri\n[Uygulama Adı], kullanıcılar hakkında çeşitli yollarla veri toplar. Bu yöntemler şunlardır:\n\nKayıt ve Hesap Oluşumu: Kullanıcılar, uygulamaya kayıt olurken ad, soyad, e-posta adresi gibi temel bilgilerini sağlar.\nİlgi Alanı ve Profil Güncellemeleri: Kullanıcılar, sahiplendirme veya kaybolan hayvan ilanlarını oluştururken, ek bilgileri (hayvan bilgileri, fotoğraflar, iletişim bilgileri vb.) girer.\nUygulama İçi Etkileşimler: Kullanıcıların uygulama içindeki hareketlerini izleyerek, hangi özelliklerin kullanıldığını ve hangi işlemlerin yapıldığını kaydederiz.\nÇerezler ve İzleme Teknolojileri: Kullanıcılar, uygulamayı kullandıkça, çerezler ve diğer izleme araçlarıyla kullanıcı davranışları hakkında anonim veriler toplanır.\nLokasyon Verisi: Kullanıcıların mobil cihazları üzerinden, yalnızca izin verildiği takdirde, GPS verileri alınabilir.\n\n3. Verilerin Kullanım Amaçları\nTopladığımız kişisel verileri, aşağıdaki amaçlarla kullanabiliriz:\n\nHizmet Sağlama: Kullanıcı hesabı oluşturmak, ilanlar oluşturmak ve hayvan sahiplendirme sürecini yönetmek.\nDestek ve İletişim: Kullanıcılarla iletişime geçmek, soruları yanıtlamak, teknik destek sağlamak ve kullanıcı geri bildirimlerini değerlendirmek.\nUygulama İyileştirme: Kullanıcıların uygulama içindeki davranışlarını analiz ederek, uygulama fonksiyonlarını geliştirmek ve yeni özellikler eklemek.\nReklam ve Pazarlama: Kullanıcıların tercihlerine göre, onlara uygulama içi bildirimler, yeni özellikler veya hizmetler hakkında bilgi sağlamak.\nHukuki Yükümlülükler: Yasal zorunluluklar veya düzenleyici talepler doğrultusunda, kullanıcı verilerini toplamak ve saklamak.\n\n4. Çerezler ve İzleme Teknolojileri\nUygulamamız, kullanıcı deneyimini iyileştirmek için çerezler ve diğer izleme teknolojilerini kullanabilir. Bu teknolojiler, kullanıcıların siteyi nasıl kullandığını anlamamıza, tercihlerini hatırlamamıza ve uygulamayı kişiselleştirmemize yardımcı olur.\n\nÇerezler: Uygulama içindeki gezinmeyi iyileştirmek için çerezler kullanılabilir. Çerezler, kullanıcıların daha önceki tercihlerini kaydeder ve uygulama kullanımını daha verimli hale getirir.\nİzleme Pikseli ve Web Beacons: Uygulamanın performansını izlemek ve kullanıcı davranışlarını analiz etmek amacıyla izleme pikselleri ve web beacon teknolojileri de kullanılabilir.\nÇerez Yönetimi: Kullanıcılar, tarayıcı ayarlarından çerezleri devre dışı bırakabilir. Ancak, çerezlerin devre dışı bırakılması bazı özelliklerin düzgün çalışmamasına yol açabilir.\n\n5. Verilerin Paylaşılması\nTopladığımız veriler, yalnızca aşağıda belirtilen durumlarda üçüncü taraflarla paylaşılabilir:\n\nHizmet Sağlayıcıları: [Uygulama Adı]\'nın hizmet sağlayıcılarıyla (veri barındırma, ödeme işleme, e-posta hizmet sağlayıcıları vb.) sınırlı veri paylaşımı yapılabilir. Bu taraflar, yalnızca belirli hizmetlerin sunulması amacıyla verilerinizi kullanabilirler.\nYasal Zorunluluklar: Kullanıcı verileri, yasal talepler doğrultusunda veya resmi bir prosedür gereği yasal yetkililere iletilebilir.\nVeri Transferi: Uygulamanın operasyonları başka ülkelere taşındığında, verilerinizin yurtdışına aktarılması gerekebilir. Bu durumda, verilerinizin güvenliği için gerekli önlemler alınır.\n\n6. Verilerin Saklanması ve Korunması\nToplanan veriler, yalnızca yasal saklama süreleri boyunca saklanacaktır. Veriler, [Uygulama Adı]\'nın güvenli altyapısında şifrelenerek saklanır ve yalnızca yetkilendirilmiş kişiler tarafından erişilebilir.\n\nVeri Saklama Süresi: Veriler, yalnızca işleme amacına uygun olarak saklanacak ve yasal saklama süreleri sona erdiğinde silinecektir.\nGüvenlik: Kullanıcı verileri, kötüye kullanım ve yetkisiz erişime karşı endüstri standartlarına uygun şekilde korunur.\n\n7. Kullanıcı Hakları\nKullanıcılar, kişisel verileri ile ilgili aşağıdaki haklara sahiptir:\n\nVeriye Erişim: Kullanıcılar, kendi kişisel verilerine erişim talep edebilir.\nVeri Düzeltme: Kullanıcılar, yanlış veya eksik verileri düzelttirebilir.\nVeri Silme: Kullanıcılar, verilerinin silinmesini talep edebilir (bazı yasal durumlar hariç).\nRıza İptali: Kullanıcılar, rıza ile toplanan verilerin işlenmesini istedikleri zaman iptal edebilir.\n\n8. İletişim\nVeri toplama politikamızla ilgili herhangi bir sorunuz veya endişeniz varsa, bizimle şu yollarla iletişime geçebilirsiniz:\n\nE-posta: [E-posta adresi]\nTelefon: [Telefon numarası]\nAdres: [Fiziksel adres]\n',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Sonuç',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Mukta',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                '[Uygulama Adı], kullanıcılarının verilerini güvenli ve şeffaf bir şekilde toplar, işler ve saklar. Kullanıcılar, verilerinin nasıl toplandığı ve kullanıldığı konusunda her zaman bilgilendirilir ve gizlilik haklarına saygı gösterilir. Bu politika, kullanıcıların veri güvenliği konusunda tam bir şeffaflıkla bilgilendirilmesini sağlar.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mukta',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
                    .divide(const SizedBox(height: 24.0))
                    .addToEnd(const SizedBox(height: 32.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
