import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kvkk_model.dart';
export 'kvkk_model.dart';

class KvkkWidget extends StatefulWidget {
  const KvkkWidget({super.key});

  @override
  State<KvkkWidget> createState() => _KvkkWidgetState();
}

class _KvkkWidgetState extends State<KvkkWidget> {
  late KvkkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KvkkModel());
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
                              'KVKK',
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
                              'Gizlilik ve Veri Koruma Politikası',
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
                              '[Uygulama Adı] olarak kullanıcılarımızın kişisel verilerinin güvenliğini en üst düzeyde tutmayı taahhüt ederiz. Bu Gizlilik ve Veri Koruma Politikası, kişisel verilerinizi nasıl topladığımızı, kullandığımızı, paylaştığımızı ve koruduğumuzu açıklamaktadır. [Uygulama Adı]\'nı kullanarak, işbu politikayı okuduğunuzu ve onayladığınızı kabul etmiş oluyorsunuz.\n\n1. Kişisel Verilerin Toplanması\nUygulama üzerinden, kullanıcılarımızdan kişisel veriler toplanmaktadır. Bu veriler, KVKK ve diğer ilgili yasal düzenlemelere uygun şekilde işlenir. Topladığımız kişisel veriler şunları içerebilir:\n\nKimlik Bilgileri: Ad, soyad, kullanıcı adı\nİletişim Bilgileri: E-posta adresi, telefon numarası\nHesap Bilgileri: Şifre, kullanıcı profili bilgileri\nİzleme Bilgileri: IP adresi, cihaz bilgileri, uygulama kullanım bilgileri\nHayvan Sahiplendirme İlanları ile İlgili Veriler: Sahip olduğunuz ve sahiplendirdiğiniz hayvanlara dair bilgiler (hayvanın türü, cinsi, yaşı, sağlık durumu vb.)\nKaybolan Hayvan İlanları ile İlgili Veriler: Kaybolan hayvana dair bilgiler (fotoğraflar, bulunduğu yer, kaybolma zamanı vb.)\nKişisel verilerinizi, yalnızca yasal zorunluluklar ve uygulama amacına yönelik olarak toplayacağız. Verilerinizi toplarken, uygulama üzerinden sağlanan her türlü bilgi, açık rızanıza dayalı olarak alınır.\n\n2. Kişisel Verilerin Kullanımı\nTopladığımız kişisel verileri aşağıdaki amaçlarla kullanabiliriz:\n\nHizmetlerin Sunulması: Uygulamamız üzerinden barınak ilanları, sahiplendirme, kaybolan hayvan ilanları ve benzeri hizmetlerin sağlanması.\nHizmet İyileştirmeleri: Kullanıcı deneyimini iyileştirmek ve uygulama özelliklerini geliştirmek için analizler yapmak.\nİletişim: Kullanıcılarımıza, uygulama ile ilgili duyurular, güncellemeler, müşteri hizmetleri desteği sağlamak.\nYasal Zorunluluklar: Kanunen gerekli olan durumlarda, kişisel verilerinizi ilgili yasal mercilere bildirmek.\n3. Kişisel Verilerin Paylaşılması\nKişisel verileriniz yalnızca aşağıdaki durumlarda üçüncü şahıslarla paylaşılabilir:\n\nYasal Zorunluluklar: Kanun, düzenleme veya yasal bir işlem gereği, kişisel verilerinizin paylaşılması gerekebilir.\nHizmet Sağlayıcılar: Verilerinizi yalnızca belirli hizmet sağlayıcılarla paylaşabiliriz (örneğin, bulut depolama hizmetleri, ödeme sistemleri vb.). Bu hizmet sağlayıcılarla yapılan anlaşmalar, kişisel verilerinizin güvenliğini sağlamayı garanti eder.\nBarınaklar ve Diğer Kullanıcılar: Sahiplendirme işlemleri sırasında, sahiplendirilen hayvana dair bilgiler, yalnızca ilgili kullanıcılarla paylaşılabilir.\nVerilerinizin üçüncü şahıslarla paylaşılmadan önce, gerekli güvenlik önlemleri alınacak ve yasal zorunluluklar dikkate alınacaktır.\n\n4. Kişisel Verilerin Korunması\nKişisel verilerinizin güvenliği, [Uygulama Adı] için büyük önem taşımaktadır. Bu sebeple, kişisel verilerinizin güvenliğini sağlamak için aşağıdaki önlemleri alıyoruz:\n\nŞifreleme: Verileriniz, güvenli şifreleme yöntemleri ile korunur.\nErişim Kontrolü: Sadece yetkilendirilmiş kişiler, kişisel verilere erişebilir.\nVeri Yedekleme: Kişisel verilerinizin kaybolmaması için düzenli olarak yedekleme yapılır.\nGüvenlik Duvarları: Uygulama, güvenlik duvarları ve anti-virüs yazılımları ile korunur.\n5. Kişisel Verilerin Saklanma Süresi\nTopladığımız kişisel verileri yalnızca belirli bir süre boyunca saklarız. Verileriniz aşağıdaki durumlara göre saklanır:\n\nHizmetin Sağlanması: Veriler, hizmetin sunulması için gerekli olan süre boyunca saklanır. Örneğin, sahiplendirme işlemleri sonrasında kişisel veriler, kullanıcılar arasında iletişimi sağlamak amacıyla kısa bir süre saklanabilir.\nYasal Zorunluluklar: Veriler, yasal düzenlemeler gereği belirli bir süre saklanabilir.\nVerilerin saklanma süresi sona erdiğinde, verileriniz güvenli bir şekilde silinir veya anonim hale getirilir.\n\n6. Kullanıcı Hakları\nKVKK kapsamında, kullanıcıların aşağıdaki haklara sahip olduğunu belirtmek isteriz:\n\nVeri Erişimi: Kişisel verilerinize dair bilgilere erişim talep edebilirsiniz.\nVeri Düzeltme: Kişisel verilerinizde bir hata veya eksiklik bulunuyorsa, bunları düzeltme hakkınız bulunmaktadır.\nVeri Silme: Kişisel verilerinizin silinmesini talep edebilirsiniz. Ancak, yasal bir yükümlülük veya hizmet sağlayıcısı ile yapılan sözleşme nedeniyle verilerin saklanması gerekebilir.\nVeri Taşınabilirliği: Kişisel verilerinizi başka bir hizmet sağlayıcıya aktarılmasını talep edebilirsiniz.\nRıza İptali: Kişisel verilerinizin işlenmesine dair verdiğiniz rızayı her zaman geri alabilirsiniz. Bu durumda, veri işleme süreci durdurulur.\nBu hakları kullanmak için bizimle iletişime geçebilirsiniz.\n\n7. Çerezler ve İzleme Teknolojileri\nUygulama, kullanıcı deneyimini iyileştirmek ve analizler yapmak amacıyla çerezler ve diğer izleme teknolojilerini kullanabilir. Çerezler hakkında daha fazla bilgi edinmek ve çerez kullanımını yönetmek için Çerez Politikası\'nı inceleyebilirsiniz.\n\n8. Politika Değişiklikleri\n[Uygulama Adı] Gizlilik ve Veri Koruma Politikası zaman zaman güncellenebilir. Yapılan değişiklikler, politika metninde belirtilir ve güncel politika metni uygulama üzerinden duyurulur. Kullanıcıların, uygulamayı kullanmaya devam etmeleri durumunda, güncellenmiş gizlilik politikasına onay verdikleri kabul edilir.\n\n9. İletişim\nBu politika ile ilgili sorularınız veya kişisel verilerinizle ilgili talepleriniz için bizimle iletişime geçebilirsiniz:\n\nE-posta: [E-posta adresi]\nTelefon: [Telefon numarası]\nAdres: [Fiziksel adres]\n',
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
                                'Sonuç: Bu Gizlilik ve Veri Koruma Politikası, [Uygulama Adı]\'nın, kullanıcılarının kişisel verilerini koruma yükümlülüğünü yerine getirdiği ve yasal gerekliliklere uygun hareket ettiğini göstermek amacıyla hazırlanmıştır. Uygulamayı kullanmaya devam ederek, kişisel verilerinizin bu politikalara uygun şekilde işlendiğini kabul etmiş olursunuz.',
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
