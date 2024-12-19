import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'veri_guvenligi_model.dart';
export 'veri_guvenligi_model.dart';

class VeriGuvenligiWidget extends StatefulWidget {
  const VeriGuvenligiWidget({super.key});

  @override
  State<VeriGuvenligiWidget> createState() => _VeriGuvenligiWidgetState();
}

class _VeriGuvenligiWidgetState extends State<VeriGuvenligiWidget> {
  late VeriGuvenligiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VeriGuvenligiModel());
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
                              'Veri Güvenliği',
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
                              'Veri Güvenliği Politikası',
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
                              '[Uygulama Adı] olarak, kullanıcılarımızın kişisel verilerinin güvenliğini sağlamak, gizliliğini korumak ve her türlü veri ihlalini önlemek için en üst düzeyde güvenlik önlemleri almayı taahhüt ederiz. Bu Veri Güvenliği Politikası, kişisel verilerin nasıl toplandığını, işlendiğini ve korunduğunu açıklamakta olup, [Uygulama Adı] kullanıcılarının güvenliği ve veri koruma haklarını güvence altına almayı amaçlar.\n\n1. Veri Güvenliği Taahhüdümüz\nKişisel Verilerin Korunması: [Uygulama Adı] olarak, kullanıcılarımızın kişisel verilerini, sadece belirli amaçlarla toplar ve yalnızca yasal yükümlülükler çerçevesinde işleriz. Verilerinizi, sadece doğru ve güvenli bir şekilde yönetiriz.\nUygulama Güvenliği: Uygulamamızın tüm yazılım altyapısı, güvenlik standartlarına uygun şekilde tasarlanmıştır ve düzenli olarak güncellenir. Bu süreç, kullanıcı verilerinin yetkisiz erişime karşı korunmasını sağlar.\n\n2. Kullanıcı Verilerinin Toplanması ve İşlenmesi\nVeri Toplama Yöntemleri: Uygulama, yalnızca kullanıcıların onayıyla kişisel verileri toplar. Bu veriler, kayıt sırasında (isim, e-posta, telefon numarası gibi) veya hizmetlerimizi kullanırken toplanabilir.\nVeri İşleme Amaçları: Kullanıcıların verileri, belirli amaçlarla (sahiplendirme, kaybolan hayvanlar, hizmet iyileştirmeleri vb.) işlenir. Veriler sadece bu amaçlarla kullanılacak ve herhangi bir üçüncü tarafla paylaşılmayacaktır, ancak yasal gereklilikler halinde istisnalar olabilir.\n\n3. Verilerin Korunması için Alınan Güvenlik Önlemleri\n[Uygulama Adı], kullanıcı verilerini korumak için çeşitli güvenlik önlemleri alır. Bu önlemler, yalnızca verilerinizi güvende tutmakla kalmaz, aynı zamanda veri ihlalleri ve kötüye kullanımla mücadele etmek için de etkili bir çözüm sunar.\n\nŞifreleme: Kullanıcıların kişisel verileri, endüstri standardı şifreleme yöntemleri (SSL/TLS) kullanılarak iletilir. Bu, verilerin güvenli bir şekilde saklanmasını ve iletilmesini sağlar.\nGüçlü Kimlik Doğrulama: Kullanıcı hesaplarına yalnızca doğru kimlik bilgileriyle erişilebilmesi için güçlü parola politikaları ve çok faktörlü kimlik doğrulama (MFA) uygulanır.\nErişim Kontrolü: Kullanıcı verilerine erişim yalnızca yetkilendirilmiş personel tarafından yapılır. Verilerinize erişimi olan tüm kişiler, veri koruma ve gizlilik politikalarına uymakla yükümlüdür.\nGüvenlik Duvarları ve Anti-Virüs: Uygulamanın altyapısı, kötü amaçlı yazılımlara karşı korumak amacıyla güvenlik duvarları (firewall) ve anti-virüs yazılımları ile korunur. Ayrıca, sızma testleri ve güvenlik denetimleri ile uygulamanın güvenliği sürekli olarak izlenir.\n\n4. Veri İhlali Durumunda Alınacak Önlemler\nVeri İhlali Tespiti: Veri ihlali olasılığına karşı, uygulamamızda sürekli izleme ve denetim mekanizmaları bulunmaktadır. Bu mekanizmalar, herhangi bir anormal etkinlik tespit ettiğinde, hemen müdahale edilmesini sağlar.\nİhlal Bildirimi: Eğer kullanıcıların kişisel verilerine yönelik bir ihlal yaşanırsa, bu ihlal 72 saat içinde ilgili kullanıcıya ve yetkili denetim organlarına bildirilir. Kullanıcılara ihlalin türü, etkileri ve alınacak düzeltici önlemler hakkında detaylı bilgi verilir.\nDüzeltici Eylemler: Veri ihlali tespit edildiğinde, hızla düzeltici önlemler alınır. Ayrıca, olayın tekrar yaşanmaması için güvenlik protokollerinde iyileştirmeler yapılır.\n\n5. Kullanıcıların Veri Güvenliği Hakkı\nKullanıcılar, kişisel verilerini korumak adına belirli haklara sahiptir. [Uygulama Adı], kullanıcıların veri güvenliği haklarını etkin bir şekilde kullanabilmeleri için aşağıdaki hakları sağlar:\n\nVerilere Erişim: Kullanıcılar, kendileriyle ilgili kişisel verilere erişim talebinde bulunabilirler.\nVeri Düzenleme ve Güncelleme: Kullanıcılar, verilerinin doğru, güncel ve eksiksiz olmasını sağlamak için verilerini güncelleyebilirler.\nVeri Silme: Kullanıcılar, kişisel verilerinin silinmesini talep edebilirler. Ancak, veriler yasal düzenlemelere göre saklanmaya devam edebilir.\nRıza İptali: Kullanıcılar, kişisel verilerinin işlenmesine dair verdikleri rızayı istediği zaman geri alabilirler.\nBu hakların kullanılması için, kullanıcılar bizimle iletişime geçebilir ve taleplerini yazılı olarak iletebilirler.\n\n6. Üçüncü Taraflarla Paylaşım ve İşbirlikleri\nHizmet Sağlayıcıları: Kullanıcıların kişisel verileri, yalnızca [Uygulama Adı]\'nın iş ortakları ve hizmet sağlayıcılarıyla, hizmetin sunulması amacıyla paylaşılabilir. Bu hizmet sağlayıcılar, kullanıcı verilerini yalnızca belirli sözleşmeler çerçevesinde kullanabilirler.\nYasal Paylaşımlar: Veriler, yalnızca yasal bir zorunluluk söz konusu olduğunda, hukuki talepler doğrultusunda üçüncü taraflarla paylaşılabilir.\n\n7. Çerezler ve İzleme Teknolojileri\nUygulama, kullanıcıların deneyimini iyileştirmek ve kişiselleştirilmiş hizmetler sunmak amacıyla çerezler ve benzeri izleme teknolojilerini kullanabilir. Kullanıcılar, uygulamayı kullanmaya devam ederek bu çerez kullanımını kabul etmiş olurlar.\n\nÇerez Politikası: Çerezler, kullanıcıların kimlik bilgilerini toplamak için değil, uygulamanın işlevselliğini geliştirmek için kullanılır. Kullanıcılar, çerezleri engellemeyi tercih edebilir ancak bu, bazı işlevlerin düzgün çalışmamasına yol açabilir.\n\n8. Verilerin Saklanma Süresi\nKullanıcıların kişisel verileri, yalnızca hizmetin sunulması için gerekli olan süre boyunca saklanır. Veriler, kullanıcı hesabı kapatıldığında ya da yasal saklama süresi sona erdiğinde güvenli bir şekilde silinir.\n\nYasal Saklama Süreleri: Bazı veriler, yasal gereklilikler nedeniyle daha uzun süre saklanabilir. Bu veriler yalnızca ilgili yasal yükümlülükleri yerine getirmek amacıyla tutulur.\n\n9. Kullanıcı İletişimi ve Veri Güvenliği Talimatları\nKullanıcılar, uygulamamızda karşılaştıkları herhangi bir güvenlik açığı veya şüpheli etkinlik konusunda derhal bizimle iletişime geçmelidir. İletişim için:\n\nE-posta: [E-posta adresi]\nTelefon: [Telefon numarası]\nAdres: [Fiziksel adres]\n\n10. Veri Güvenliği Sürekliliği ve Eğitim\nÇalışan Eğitimi: [Uygulama Adı], veri güvenliği konusunda tüm çalışanlarını düzenli olarak eğitir ve bilgilendirir. Bu sayede, veri güvenliği kültürünün her seviyede uygulamada olmasını sağlar.\nSürekli İyileştirme: Veri güvenliği protokollerimiz düzenli olarak gözden geçirilir ve iyileştirilir. Yeni güvenlik tehditleri ve teknolojik gelişmeler doğrultusunda gerekli güncellemeler yapılır.',
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
                                '[Uygulama Adı], kullanıcılarının kişisel verilerinin güvenliğini sağlamak için en yüksek güvenlik önlemlerini almaktadır. Bu politikalar, kişisel verilerinizin güvenliğini teminat altına almak, veri ihlallerini önlemek ve kullanıcı deneyimini iyileştirmek amacıyla oluşturulmuştur. Veri güvenliği ile ilgili herhangi bir sorunuz ya da endişeniz varsa, bizimle iletişime geçmekten çekinmeyin.',
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
