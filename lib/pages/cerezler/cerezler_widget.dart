import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cerezler_model.dart';
export 'cerezler_model.dart';

class CerezlerWidget extends StatefulWidget {
  const CerezlerWidget({super.key});

  @override
  State<CerezlerWidget> createState() => _CerezlerWidgetState();
}

class _CerezlerWidgetState extends State<CerezlerWidget> {
  late CerezlerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CerezlerModel());
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
                              'Çerezler',
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
                              'Çerez Politikası',
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
                              '[Uygulama Adı], kullanıcı deneyimini iyileştirmek, hizmetlerimizi kişiselleştirmek ve web sitemizin performansını analiz etmek amacıyla çerezler ve benzeri izleme teknolojileri kullanmaktadır. Bu Çerez Politikası, uygulamanın çerez kullanımı hakkında sizi bilgilendirmek ve gizliliğinizi korumak amacıyla hazırlanmıştır.\n\n1. Çerez Nedir?\nÇerezler, bir web sitesi veya uygulama tarafından cihazınıza yerleştirilen küçük veri dosyalarıdır. Bu dosyalar, siteyi yeniden ziyaret ettiğinizde sizi tanımamıza ve daha kişiselleştirilmiş bir deneyim sunmamıza yardımcı olur. Çerezler, kullanıcıların siteyi nasıl kullandığını anlamamıza, siteyi iyileştirmemize ve kullanıcıların tercihlerini hatırlamamıza olanak tanır.\n\n2. Çerez Türleri\n[Uygulama Adı] çeşitli çerez türleri kullanmaktadır. Bu çerezler, aşağıdaki kategorilere ayrılabilir:\n\nA. Kesinlikle Gerekli Çerezler\nBu çerezler, web sitesinin veya uygulamanın temel işlevlerini sağlamak için gereklidir. Bu tür çerezler, siteyi güvenli bir şekilde gezmenizi sağlar ve genellikle kullanıcı giriş bilgilerini hatırlamak için kullanılır. Bu çerezler olmadan bazı özellikler düzgün çalışmayabilir.\n\nÖrnek: Kullanıcı girişi çerezleri, güvenlik doğrulama çerezleri.\nB. Performans ve Analiz Çerezleri\nPerformans çerezleri, siteyi nasıl kullandığınızı analiz ederek deneyimi iyileştirmemize yardımcı olur. Bu çerezler, sayfa yükleme hızını ölçme, hangi sayfaların en fazla ziyaret edildiğini görmek ve kullanıcıların site içindeki gezinme alışkanlıklarını anlamak için kullanılır.\n\nÖrnek: Google Analytics çerezleri, Hotjar çerezleri.\nC. İşlevsellik Çerezleri\nİşlevsellik çerezleri, siteyi özelleştirmenizi sağlar. Kullanıcıların tercihlerini ve ayarlarını hatırlayarak, onlara daha kişiselleştirilmiş bir deneyim sunar. Örneğin, dil tercihiniz veya diğer kişisel tercihlerinizi hatırlamak için kullanılabilir.\n\nÖrnek: Dil tercih çerezleri, tema seçimi çerezleri.\nD. Hedefleme ve Reklam Çerezleri\nHedefleme çerezleri, kullanıcıların ilgisini çekebilecek içerikleri veya reklamları göstermek için kullanılır. Bu çerezler, aynı ilgi alanlarına sahip kullanıcı gruplarını hedefleyerek, gösterilen reklamların daha etkili olmasını sağlar. Ayrıca, reklam performansını izlemek için de kullanılabilirler.\n\nÖrnek: Facebook Pixel, Google Ads çerezleri.\n\n3. Çerezlerin Kullanım Amaçları\n[Uygulama Adı], çerezleri şu amaçlarla kullanmaktadır:\n\nHizmet Sunumu: Kullanıcıların hesaplarına giriş yapmalarını sağlamak, oturum sürekliliğini korumak.\nKullanıcı Deneyimi: Siteyi kişiselleştirmek ve kullanıcıların tercihlerini hatırlamak.\nPerformans ve İyileştirme: Kullanıcı davranışlarını analiz etmek ve hizmetlerimizi sürekli iyileştirmek.\nReklam ve Pazarlama: Kullanıcıların ilgisini çekebilecek reklamları sunmak ve reklam performansını ölçmek.\n\n4. Çerezlerin Yönetimi\nÇerezleri kabul etmek veya reddetmek tamamen kullanıcıların tercihlerine bağlıdır. Çoğu web tarayıcısı, çerezlerin otomatik olarak kabul edilmesini sağlar, ancak kullanıcılar tarayıcı ayarlarını değiştirerek çerezleri kabul etmeyi reddedebilir veya çerezlerin nasıl kullanılacağına dair bildirim alabilir.\n\nÇerezleri Yönetme ve Silme\nKullanıcılar, web tarayıcılarının ayarlarından çerezleri yönetebilir, engelleyebilir veya silebilir. Ancak, bazı çerezlerin devre dışı bırakılması, [Uygulama Adı]\'nın bazı işlevlerinin düzgün çalışmamasına yol açabilir.\n\nGoogle Chrome: \"Ayarlar\" menüsünden \"Çerezleri engelle\" veya \"Çerezleri sil\" seçeneklerini kullanabilirsiniz.\nMozilla Firefox: \"Ayarlar\" menüsünden \"Çerezleri sil\" veya \"Çerezleri engelle\" seçeneklerini ayarlayabilirsiniz.\nSafari: \"Ayarlar\" menüsünden \"Çerezleri engelle\" veya \"Geçici verileri sil\" seçeneklerini kullanabilirsiniz.\nMicrosoft Edge: \"Ayarlar\" menüsünden \"Çerezler\" bölümünü seçip yönetebilirsiniz.\nÇerezlerin tamamen devre dışı bırakılması, bazı hizmetlerin düzgün çalışmamasına neden olabilir. Çerezlerin devre dışı bırakılmasıyla ilgili olarak, sitenin işlevsellik ve performansında bazı kısıtlamalar yaşanabileceğini göz önünde bulundurmalısınız.\n\n5. Üçüncü Taraf Çerezleri\n[Uygulama Adı] üçüncü taraf çerezleri de kullanabilir. Bu çerezler, dış sağlayıcılar (örneğin, reklam ağları, analiz hizmetleri) tarafından yerleştirilebilir ve genellikle reklam hedefleme, kullanıcı davranışı analizi veya sosyal medya entegrasyonları gibi amaçlarla kullanılır. Bu çerezlerin nasıl çalıştığını öğrenmek için, üçüncü tarafların kendi çerez politikalarını incelemeniz gerekebilir.\n\n6. Çerez Politikası Güncellemeleri\nÇerez politikamızda zaman zaman değişiklikler yapabiliriz. Çerez politikamızdaki önemli değişiklikleri, web sitemiz veya uygulamamız aracılığıyla kullanıcılarımıza duyuracağız. Bu nedenle, çerez politikasını düzenli olarak gözden geçirmeniz önemlidir.\n\n7. İletişim\nÇerez politikamızla ilgili herhangi bir sorunuz varsa, bizimle aşağıdaki iletişim bilgileri üzerinden iletişime geçebilirsiniz:\n\nE-posta: [E-posta adresi]\nTelefon: [Telefon numarası]\nAdres: [Fiziksel adres]',
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
                                '[Uygulama Adı], kullanıcılarımıza daha iyi bir deneyim sunabilmek amacıyla çerezleri kullanmaktadır. Çerezlerin kullanımını kabul etmek tamamen size bağlıdır, ancak bazı özelliklerin düzgün çalışabilmesi için çerezlerin etkin olması gerekebilir. Bu politika, çerezler hakkında bilgilendirme sağlayarak, kullanıcıların gizliliğine saygı duymaktadır.',
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
