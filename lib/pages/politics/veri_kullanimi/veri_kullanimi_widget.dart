import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'veri_kullanimi_model.dart';
export 'veri_kullanimi_model.dart';

class VeriKullanimiWidget extends StatefulWidget {
  const VeriKullanimiWidget({super.key});

  @override
  State<VeriKullanimiWidget> createState() => _VeriKullanimiWidgetState();
}

class _VeriKullanimiWidgetState extends State<VeriKullanimiWidget> {
  late VeriKullanimiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VeriKullanimiModel());
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
                              'Veri Kullanımı',
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
                              'Veri Kullanımı Politikası',
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
                              '[Uygulama Adı], kullanıcılarımızın kişisel verilerinin gizliliğine ve güvenliğine büyük önem verir. Bu Veri Kullanımı Politikası, kullanıcılarımızın kişisel verilerinin nasıl toplandığını, işlendiğini, saklandığını ve kullanıldığını açıklamaktadır. Uygulamanızı kullanarak, aşağıdaki şartları kabul etmiş oluyorsunuz.\n\n1. Kişisel Verilerin Toplanması\n[Uygulama Adı], kullanıcılarının kişisel verilerini belirli amaçlar için toplar ve işler. Toplanan veriler, yalnızca belirtilen amaçlarla kullanılacaktır.\n\nKişisel Bilgiler: Uygulama kaydınız sırasında adınız, soyadınız, e-posta adresiniz, telefon numaranız ve diğer iletişim bilgilerinizi toplarız.\nHayvan Bilgileri: Sahiplendirme ilanlarınızda veya kaybolan hayvanlar hakkında verdiğiniz bilgiler (hayvan türü, yaşı, sağlığı, fotoğraflar vb.) toplanabilir.\nKullanım Verileri: Uygulama içindeki davranışlarınızı izlemek ve kullanımınızı analiz etmek amacıyla, IP adresiniz, cihaz türünüz, uygulama sürümü ve kullanım süreniz gibi anonim veriler toplanabilir.\nÇerezler ve İzleme Teknolojileri: Uygulama, kullanıcı deneyimini iyileştirmek ve hizmet sunumunu optimize etmek amacıyla çerezler ve benzeri izleme teknolojilerini kullanabilir.\n\n2. Kişisel Verilerin İşlenme Amaçları\nToplanan kişisel veriler, aşağıdaki amaçlarla işlenebilir:\n\nHizmet Sunumu: Kullanıcı hesaplarının oluşturulması, sahiplendirme ve kaybolan hayvan ilanlarının işlenmesi, kullanıcı ile iletişime geçilmesi.\nDestek ve İletişim: Kullanıcı talepleri, sorular ve geri bildirimlerle ilgili destek sağlanması. Kullanıcılara bilgi güncellemeleri, yeni özellikler veya hizmet değişiklikleri hakkında bilgi verilmesi.\nHizmet İyileştirmeleri: Kullanıcıların deneyimini iyileştirmek, uygulamanın işlevselliğini geliştirmek, kullanım verilerini analiz ederek performansı optimize etmek.\nHukuki Yükümlülükler: Yasal zorunluluklar veya düzenleyici talepler doğrultusunda kişisel verilerin işlenmesi.\n\n3. Kişisel Verilerin Saklanması\nKişisel veriler, yalnızca [Uygulama Adı] tarafından belirlenen yasal veya operasyonel gereksinimlere uygun olarak saklanır.\n\nVeri Saklama Süresi: Kişisel veriler, toplama amacını yerine getirmek için gerekli olan süre boyunca saklanacaktır. Veriler, yasal saklama sürelerine göre daha uzun süre saklanabilir. Kullanıcılar, verilerinin silinmesini talep edebilir, ancak bazı veriler yasal zorunluluklar nedeniyle saklanmaya devam edebilir.\nVeri Silme: Kullanıcılar, hesaplarını kapattığında veya verilerinin saklanmasını istemediğinde, kişisel verileri güvenli bir şekilde silinir.\n\n4. Kişisel Verilerin Paylaşılması\nKişisel verilerinizin paylaşılacağı durumlar sınırlıdır. [Uygulama Adı], kişisel verilerinizi yalnızca aşağıdaki durumlarda paylaşır:\n\nHizmet Sağlayıcıları: Uygulamanın çalışabilmesi için gerekli olan hizmet sağlayıcılarıyla (örneğin, barındırma hizmetleri, ödeme işlemcileri) sınırlı bir şekilde paylaşılabilir. Bu hizmet sağlayıcılar, verilerinizi yalnızca belirtilen hizmetleri sağlamak için kullanabilir.\nYasal Zorunluluklar: Kişisel verileriniz, yasal gereklilikler doğrultusunda, mahkeme kararı, yasal süreçler veya devlet yetkilileri talepleri doğrultusunda paylaşılabilir.\nVeri Transferi: Eğer [Uygulama Adı]\'nın iş operasyonları başka ülkelere taşınırsa, kişisel verilerinizin aktarılması gerekebilir. Bu durumda, verilerinizin güvenliği için uygun önlemler alınacaktır.\n\n5. Kullanıcıların Hakları\nKullanıcılar, kişisel verileri ile ilgili aşağıdaki haklara sahiptir:\n\nVerilere Erişim Hakkı: Kullanıcılar, kendileriyle ilgili kişisel verilere erişim talep edebilir.\nDüzeltme Hakkı: Kullanıcılar, kişisel verilerinin yanlış veya eksik olması durumunda, verilerinin düzeltilmesini talep edebilir.\nSilme Hakkı: Kullanıcılar, belirli şartlar altında kişisel verilerinin silinmesini talep edebilir.\nİşleme Sınırlama Hakkı: Kullanıcılar, belirli durumlarda verilerinin işlenmesinin sınırlanmasını isteyebilir.\nVeri Taşınabilirliği Hakkı: Kullanıcılar, kişisel verilerini başka bir hizmet sağlayıcısına aktarmak için talep edebilir.\nRıza İptali Hakkı: Kullanıcılar, herhangi bir zaman kişisel verilerinin işlenmesi için verdikleri rızayı geri alabilirler.\nŞikayet Hakkı: Kullanıcılar, veri işleme süreçlerinden memnun kalmadıkları takdirde, ilgili veri koruma otoritelerine başvurabilirler.\n\n6. Veri Güvenliği\n[Uygulama Adı], kullanıcıların kişisel verilerini korumak için endüstri standartlarına uygun güvenlik önlemleri alır. Bu güvenlik önlemleri, verilerinizi korumak ve yetkisiz erişimi engellemek amacıyla şifreleme, güvenlik duvarları ve diğer ileri düzey teknolojileri içerir.\n\nVeri Şifreleme: Kullanıcıların kişisel verileri, güvenli bir şekilde şifrelenir.\nErişim Denetimi: Kişisel verilere yalnızca yetkilendirilmiş personelin erişimine izin verilir.\n\n7. Çerezler ve İzleme Teknolojileri\nÇerezler ve benzeri izleme teknolojileri, uygulamanın işlevselliğini sağlamak ve kullanıcı deneyimini iyileştirmek amacıyla kullanılabilir. [Uygulama Adı]\'nın çerez kullanımı hakkında daha fazla bilgi almak için Çerez Politikası\'nı inceleyebilirsiniz.\n\nÇerezler: Uygulama, kullanıcıların tercihlerine göre kişiselleştirilmiş içerik sunmak amacıyla çerezler kullanabilir.\nÇerez Yönetimi: Kullanıcılar, çerez ayarlarını tarayıcılarında değiştirebilir. Ancak, çerezlerin devre dışı bırakılması bazı işlevlerin düzgün çalışmamasına yol açabilir.\n\n8. Uygulama Güncellemeleri ve Veri Kullanımı Değişiklikleri\n[Uygulama Adı], veri kullanımı politikasını zaman zaman güncelleyebilir. Bu tür güncellemeler, kullanıcıları bilgilendirmek amacıyla uygulama üzerinden duyurulur. Politikanın en son güncellenme tarihi her zaman bu sayfada belirtilecektir.\n\n9. İletişim\nKişisel verilerinizin kullanımı ile ilgili sorularınız veya endişeleriniz varsa, aşağıdaki iletişim bilgileri üzerinden bizimle iletişime geçebilirsiniz:\n\nE-posta: [E-posta adresi]\nTelefon: [Telefon numarası]\nAdres: [Fiziksel adres]\n',
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
                                '[Uygulama Adı], kullanıcıların kişisel verilerini güvenli bir şekilde işlemek ve korumak için gerekli tüm önlemleri alır. Verilerinizin kullanımına dair şeffaf bir yaklaşım benimsemekteyiz. Bu politika, kişisel verilerinizin ne şekilde kullanıldığına dair önemli bilgiler sunar. Kullanıcılar, uygulamayı kullanarak bu şartları kabul etmiş olurlar.\n\n',
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
