//
//  IconFont.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import Foundation

public enum IconFont {
    case antDesign(AntDesign)
    case entypo(Entypo)
}

extension IconFont {
    var fontName: String {
        switch self {
        case .antDesign:
            return "anticon"
        case .entypo:
            return "Entypo"
        }
    }
    
    var text: String {
        switch self {
        case .antDesign(let antDesign):
            return antDesign.rawValue.unicodeString
        case .entypo(let entypo):
            return entypo.rawValue
        }
    }
}

private extension UInt32 {
    var unicodeString: String {
        String(UnicodeScalar(self)!)
    }
}

extension IconFont {
    public enum AntDesign: UInt32, CaseIterable {
        case stepforward = 58880
        case stepbackward = 58881
        case forward = 58882
        case banckward = 58883
        case caretright = 58884
        case caretleft = 58885
        case caretdown = 58886
        case caretup = 58887
        case rightcircle = 58888
        case leftcircle = 58889
        case upcircle = 58890
        case downcircle = 58891
        case rightcircleo = 58892
        case leftcircleo = 58893
        case upcircleo = 58894
        case downcircleo = 58895
        case verticleleft = 58896
        case verticleright = 58897
        case back = 58898
        case retweet = 58899
        case shrink = 58900
        case arrowsalt = 58901
        case doubleright = 58903
        case doubleleft = 58904
        case arrowdown = 58905
        case arrowup = 58906
        case arrowright = 58907
        case arrowleft = 58908
        case down = 58909
        case up = 58910
        case right = 58911
        case left = 58912
        case minussquareo = 58913
        case minuscircle = 58914
        case minuscircleo = 58915
        case minus = 58916
        case pluscircleo = 58917
        case pluscircle = 58918
        case plus = 58919
        case infocirlce = 58920
        case infocirlceo = 58921
        case info = 58922
        case exclamation = 58923
        case exclamationcircle = 58924
        case exclamationcircleo = 58925
        case closecircle = 58926
        case closecircleo = 58927
        case checkcircle = 58928
        case checkcircleo = 58929
        case check = 58930
        case close = 58931
        case customerservice = 58932
        case creditcard = 58933
        case codesquareo = 58934
        case book = 58935
        case barschart = 58936
        case bars = 58937
        case question = 58938
        case questioncircle = 58939
        case questioncircleo = 58940
        case pause = 58941
        case pausecircle = 58942
        case pausecircleo = 58943
        case clockcircle = 58944
        case clockcircleo = 58945
        case swap = 58946
        case swapleft = 58947
        case swapright = 58948
        case plussquareo = 58949
        case frown = 58950
        case menufold = 58968
        case mail = 58969
        case link = 58971
        case areachart = 58972
        case linechart = 58973
        case home = 58974
        case laptop = 58975
        case star = 58976
        case staro = 58977
        case filter = 58979
        case meho = 58982
        case meh = 58983
        case shoppingcart = 58984
        case save = 58985
        case user = 58986
        case videocamera = 58987
        case totop = 58988
        case team = 58989
        case sharealt = 58993
        case setting = 58994
        case picture = 58996
        case phone = 58997
        case paperclip = 58998
        case notification = 58999
        case menuunfold = 59001
        case inbox = 59002
        case lock = 59003
        case qrcode = 59004
        case tags = 59005
        case tagso = 59006
        case cloudo = 59007
        case cloud = 59008
        case cloudupload = 59009
        case clouddownload = 59010
        case clouddownloado = 59011
        case clouduploado = 59012
        case enviroment = 59013
        case enviromento = 59014
        case eye = 59015
        case eyeo = 59016
        case camera = 59017
        case camerao = 59018
        case windows = 59019
        case export2 = 59024
        case export = 59025
        case circledowno = 59027
        case circledown = 59028
        case hdd = 59034
        case ie = 59035
        case delete = 59039
        case enter = 59040
        case pushpino = 59041
        case pushpin = 59042
        case heart = 59043
        case hearto = 59044
        case smile_circle = 59047
        case smileo = 59048
        case frowno = 59049
        case calculator = 59050
        case chrome = 59052
        case github = 59053
        case iconfontdesktop = 59060
        case caretcircleoup = 59061
        case upload = 59062
        case download = 59063
        case piechart = 59064
        case lock1 = 59065
        case unlock = 59066
        case windowso = 59068
        case dotchart = 59069
        case barchart = 59070
        case codesquare = 59071
        case plussquare = 59072
        case minussquare = 59073
        case closesquare = 59074
        case closesquareo = 59075
        case checksquare = 59076
        case checksquareo = 59077
        case fastbackward = 59078
        case fastforward = 59079
        case upsquare = 59080
        case downsquare = 59081
        case leftsquare = 59082
        case rightsquare = 59083
        case rightsquareo = 59084
        case leftsquareo = 59085
        case down_square_o = 59086
        case up_square_o = 59087
        case play = 59088
        case playcircleo = 59089
        case tag = 59090
        case tago = 59091
        case addfile = 59664
        case folder1 = 58978
        case file1 = 58980
        case switcher = 59667
        case addfolder = 59668
        case folderopen = 59033
        case search1 = 58992
        case ellipsis1 = 58951
        case calendar = 59067
        case filetext1 = 59032
        case copy1 = 58952
        case jpgfile1 = 59036
        case pdffile1 = 59059
        case exclefile1 = 59056
        case pptfile1 = 59057
        case unknowfile1 = 59055
        case wordfile1 = 59058
        case dingding = 59683
        case dingding_o = 59685
        case mobile1 = 59000
        case tablet1 = 58990
        case bells = 58958
        case disconnect = 58959
        case database = 58960
        case barcode = 58962
        case hourglass = 58963
        case key = 58964
        case flag = 58965
        case layout = 58966
        case printer = 58995
        case USB = 59095
        case skin = 59096
        case tool = 59097
        case car = 59100
        case addusergroup = 59101
        case carryout = 59103
        case deleteuser = 59104
        case deleteusergroup = 59105
        case man = 59106
        case isv = 59107
        case gift = 59108
        case idcard = 59109
        case medicinebox = 59110
        case redenvelopes = 59111
        case rest = 59112
        case Safety = 59114
        case wallet = 59115
        case woman = 59116
        case adduser = 59117
        case bank = 59118
        case Trophy = 59119
        case loading1 = 59054
        case loading2 = 58957
        case like2 = 59037
        case dislike2 = 59038
        case like1 = 58956
        case dislike1 = 58955
        case bulb1 = 58953
        case rocket1 = 59663
        case select1 = 58954
        case apple1 = 59020
        case apple_o = 59092
        case android1 = 59704
        case android = 59021
        case aliwangwang_o1 = 59023
        case aliwangwang = 59022
        case pay_circle1 = 59045
        case pay_circle_o1 = 59046
        case poweroff = 59093
        case trademark = 58961
        case find = 59099
        case copyright = 59102
        case sound = 59113
        case earth = 59121
        case wifi = 59094
        case sync = 59098
        case login = 58967
        case logout = 58970
        case reload1 = 58902
        case message1 = 59051
        case shake = 59727
        case API = 59729
        case appstore_o = 59029
        case appstore1 = 59030
        case scan1 = 59031
        case exception1 = 58981
        case contacts = 59120
        case solution1 = 58991
        case fork = 59122
        case edit = 59026
        case form = 59798
        case warning = 59799
        case table = 59800
        case profile = 59801
        case dashboard = 59802
        case indent_left = 59814
        case indent_right = 59815
        case menu_unfold = 59820
        case menu_fold = 59821
        case antdesign = 59826
        case alipay_square = 59827
        case codepen_circle = 59828
        case google = 59829
        case amazon = 59830
        case codepen = 59831
        case facebook_square = 59832
        case dropbox = 59833
        case googleplus = 59834
        case linkedin_square = 59835
        case medium_monogram = 59836
        case gitlab = 59837
        case medium_wordmark = 59838
        case QQ = 59839
        case skype = 59840
        case taobao_square = 59841
        case alipay_circle = 59842
        case youtube = 59843
        case wechat = 59844
        case twitter = 59845
        case weibo = 59846
        case HTML = 59847
        case taobao_circle = 59123
        case weibo_circle = 59124
        case weibo_square = 59125
        case CodeSandbox = 59860
        case aliyun = 59892
        case zhihu = 59139
        case behance = 59143
        case dribbble = 59145
        case dribbble_square = 59146
        case behance_square = 59144
        case file_markdown = 59140
        case instagram = 59147
        case yuque = 59148
        case slack = 59141
        case slack_square = 59142
    }
    
    public enum Entypo: String {
        case stepforward = ""
    }
    
    public enum EvilIcons: String {
        case stepforward = ""
    }
    
    public enum Feather: String {
        case stepforward = ""
    }
    
    public enum FontAwesome: String {
        case stepforward = ""
    }
    
    public enum FontAwesome5: String {
        case stepforward = ""
    }
    
    public enum Fontisto: String {
        case stepforward = ""
    }
    
    public enum Foundation: String {
        case stepforward = ""
    }
    
    public enum Ionicons: String {
        case stepforward = ""
    }
    
    public enum MaterialCommunityIcons: String {
        case stepforward = ""
    }
    
    public enum MaterialIcons: String {
        case stepforward = ""
    }
    
    public enum Octicons: String {
        case stepforward = ""
    }
    
    public enum SimpleLineIcons: String {
        case stepforward = ""
    }
    
    public enum Zocial: String {
        case stepforward = ""
    }
}
