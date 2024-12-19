import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kullanim_kosullari_model.dart';
export 'kullanim_kosullari_model.dart';

class KullanimKosullariWidget extends StatefulWidget {
  const KullanimKosullariWidget({super.key});

  @override
  State<KullanimKosullariWidget> createState() =>
      _KullanimKosullariWidgetState();
}

class _KullanimKosullariWidgetState extends State<KullanimKosullariWidget> {
  late KullanimKosullariModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KullanimKosullariModel());
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
                              'Kullanım Koşulları',
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
                              'Kullanım Koşulları Politikası',
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
                              '[Uygulama Adı] (\"Uygulama\", \"biz\", \"bize\", \"bizim\") olarak, kullanıcılarımıza barınak ve sahiplendirme hizmetleri sunmayı amaçlıyoruz. Bu Kullanım Koşulları, uygulamamızı kullanan tüm kullanıcıların hak ve yükümlülüklerini belirlemektedir. Uygulamayı kullanarak, aşağıdaki koşulları kabul etmiş olursunuz.\n\n1. Genel Hükümler\nUygulamanın Amacı: Uygulama, hayvanların sahiplendirilmesi, kaybolan hayvanların bulunması ve barınaklar ile kullanıcıların birbirleriyle iletişim kurması amacıyla hizmet vermektedir. Kullanıcılar, yalnızca bu amaçlarla uygulamayı kullanmalıdır.\nKullanıcı Tanımı: \"Kullanıcı\", uygulamayı ziyaret eden, kaydolan, ilan veren veya ilanlara başvuran kişi veya kuruluşları ifade eder.\nDeğişiklikler: [Uygulama Adı] kullanım koşullarında değişiklik yapma hakkını saklı tutar. Koşullarda yapılan herhangi bir değişiklik, uygulama üzerinden yayınlandığı andan itibaren geçerli olur.\n\n2. Kullanıcı Kaydı ve Hesap Bilgileri\nHesap Oluşturma: Uygulamaya erişim sağlamak ve hizmetlerden yararlanmak için bir kullanıcı hesabı oluşturmanız gerekebilir. Hesap oluştururken doğru, güncel ve eksiksiz bilgiler sağlamak zorundasınız.\nHesap Güvenliği: Hesabınızı yalnızca siz kullanmalısınız. Hesap güvenliğinden siz sorumlusunuz. Şifrenizin güvenliğini sağlamalı ve başkalarının erişimini engellemelisiniz.\nHesap İptali ve Kapatma: Kullanıcı, istediği zaman hesabını iptal edebilir veya kapatabilir. Uygulama, kullanıcıların politikalarımıza ve yasal yükümlülüklerimize uymadığı durumlarda hesaplarını askıya alabilir veya silebilir.\n\n3. Kullanıcı Yükümlülükleri\nYasalara Uygunluk: Uygulamanın hizmetlerini kullanırken, yerel, ulusal ve uluslararası tüm yasal düzenlemelere uymalısınız. Sahiplendirme işlemleri, hayvan hakları ve diğer ilgili yasalar çerçevesinde gerçekleştirilmelidir.\nGerçek ve Doğru Bilgiler: İlan verirken veya kaybolan hayvan bildirimlerinde, gerçeğe aykırı bilgi vermek yasaktır. Verilen bilgilerin doğruluğundan siz sorumlusunuz.\nKötüye Kullanım ve İhlaller: Uygulamanın amacı dışında kullanım, diğer kullanıcıları taciz etme, zorla sahiplendirme veya yasal olmayan faaliyetler kesinlikle yasaktır. [Uygulama Adı], bu tür davranışlar tespit edilirse kullanıcı hesabını askıya alabilir veya sonlandırabilir.\nHayvanların Refahı: Sahiplendirdiğiniz veya sahiplendiğiniz hayvanlar için sağlık, güvenlik ve bakım koşullarına özen göstermelisiniz. Sahiplendirme işlemi sırasında hayvanın sağlıklı olduğuna ve uygun bakım şartlarına sahip olduğuna dair doğru bilgi vermek gereklidir.\n\n4. Uygulama Kullanım Hakkı ve Lisans\nKullanım Hakkı: [Uygulama Adı], size yalnızca kişisel, ticari olmayan, devredilemez bir kullanım lisansı verir. Uygulamanın tüm içerikleri, yazılımlar, tasarımlar, logo ve marka hakları [Uygulama Adı]’nın mülkiyetindedir ve sadece uygulamanın sunduğu hizmetlere uygun şekilde kullanılabilir.\nYasaklı Kullanım: Uygulamayı yasa dışı, zarar verici, spam amaçlı veya başka bir şekilde kötüye kullanmak yasaktır. Ayrıca, başkalarının kişisel bilgilerini izinsiz olarak toplamak, izlemek, çoğaltmak veya paylaşmak da yasaktır.\n\n5. Sorumluluk Reddi ve Sınırlaması\nHizmetlerin Sınırlı Sunumu: [Uygulama Adı], uygulama üzerinden sağlanan hizmetlerin kesintisiz veya hatasız olacağına dair herhangi bir garanti vermez. Uygulama, kullanıcılara sağlanan hizmetlerin herhangi bir zamanda kesintiye uğrayabileceğini veya durabileceğini belirler.\nHayvanların Durumu: [Uygulama Adı], sahiplendirme sürecinde veya kaybolan hayvanların bulunmasında yer almaz. Sahiplendirme işlemleri kullanıcılar arasında gerçekleşir ve [Uygulama Adı], bu süreçlerden dolayı herhangi bir sorumluluk taşımaz. Kullanıcılar, hayvanların sağlık durumu, güvenliği ve bakımından tamamen sorumludur.\nYasal Sorumluluk: Uygulama, kullanıcıların yasa dışı faaliyetlere karışmasından veya ihlallerinden sorumlu değildir. Kullanıcılar, herhangi bir yasal uyuşmazlık durumunda tamamen kendi sorumluluklarındadır.\n\n6. İlanlar ve İçerik\nİlanların Doğruluğu: Kullanıcılar, sahiplendirme ve kaybolan hayvan ilanlarında verdikleri bilgilerin doğru, eksiksiz ve güncel olduğunu taahhüt ederler. Yanıltıcı içerikler nedeniyle ortaya çıkabilecek zararlardan tamamen sorumlu olurlar.\nİlanlara Müdahale: [Uygulama Adı], kullanıcılar tarafından yayımlanan ilanların içeriğini denetleme, değiştirme veya kaldırma hakkını saklı tutar. Ayrıca, yasal olmayan veya uygunsuz görülen ilanlar kullanıcıya bildirilmeden silinebilir.\n\n7. Çerezler ve İzleme Teknolojileri\nÇerez Kullanımı: [Uygulama Adı], kullanıcı deneyimini iyileştirmek ve uygulama kullanımını analiz etmek amacıyla çerezler ve diğer izleme teknolojilerini kullanabilir. Kullanıcılar, uygulamayı kullanarak çerezlerin kullanılmasını kabul etmiş olurlar. Çerezlerle ilgili detaylı bilgi için Çerez Politikası\'nı inceleyebilirsiniz.\n\n8. Fikri Mülkiyet Hakları\nUygulamanın İçeriği: Uygulama, yazılım, grafik, logo, içerik ve diğer tüm materyaller [Uygulama Adı]’nın fikri mülkiyet haklarına sahiptir ve izinsiz kopyalanması, dağıtılması veya çoğaltılması yasaktır.\nKullanıcı İçeriği: Kullanıcılar, uygulama üzerinden yayımladıkları içeriklerin (fotoğraf, açıklama, video vb.) [Uygulama Adı] tarafından kullanılmasına izin verir. Kullanıcılar, yayımladıkları içeriklerin telif haklarından sorumludur.\n\n9. Gizlilik ve Veri Koruma\nKişisel Veriler: [Uygulama Adı], kullanıcıların kişisel verilerini toplarken ve işlerken Kişisel Verilerin Korunması Kanunu (KVKK) ve diğer ilgili yasalar çerçevesinde hareket eder. Kullanıcıların kişisel verilerinin korunması için gereken tüm önlemler alınmaktadır. Detaylı bilgi için Gizlilik Politikası\'nı inceleyebilirsiniz.\n\n10. Hukuki Yükümlülükler ve Uyuşmazlık Çözümü\nGeçerli Hukuk: Bu Kullanım Koşulları, Türkiye Cumhuriyeti yasalarına tabi olup, uygulamanın kullanımı ile ilgili çıkan herhangi bir uyuşmazlık durumunda İstanbul Mahkemeleri ve İcra Daireleri yetkilidir.\nUyuşmazlık Çözümü: Kullanıcılar, herhangi bir uyuşmazlık durumunda önce [Uygulama Adı] ile iletişime geçmeli ve çözüm için taraflarla müzakerelerde bulunmalıdır.\n\n11. Uygulama Üzerindeki Değişiklikler\n[Uygulama Adı], kullanım koşullarını zaman zaman değiştirme hakkına sahiptir. Değişiklikler, uygulama üzerinde yayımlandığı tarihte geçerli olur. Kullanıcılar, uygulamayı kullanmaya devam ettikleri takdirde, yapılan değişiklikleri kabul etmiş sayılırlar.\n\n12. İletişim Bilgileri\nBu Kullanım Koşulları hakkında sorularınız veya şüpheleriniz varsa, bizimle iletişime geçebilirsiniz:\n\nE-posta: [E-posta adresi]\nTelefon: [Telefon numarası]\nAdres: [Fiziksel adres]',
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
                                'Bu Kullanım Koşulları, [Uygulama Adı]\'nın hizmetlerinin adil ve güvenli bir şekilde sunulmasını sağlamak amacıyla oluşturulmuştur. Uygulamayı kullanmaya devam ederek, yukarıdaki şartları kabul etmiş olursunuz.',
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
