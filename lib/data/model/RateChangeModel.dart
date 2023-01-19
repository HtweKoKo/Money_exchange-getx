


class RateChangeModel {
  String? _info;
  String? _description;
  String? _timestamp;
  Map<String, dynamic> rates = {};

  RateChangeModel(
      {String? info, String? description, String? timestamp, Map<String,dynamic>? rates}) {
    if (info != null) {
      this._info = info;
    }
    if (description != null) {
      this._description = description;
    }
    if (timestamp != null) {
      this._timestamp = timestamp;
    }
    if (rates != null) {
      this.rates = rates;
    }
  }

  String? get info => _info;
  set info(String? info) => _info = info;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get timestamp => _timestamp;
  set timestamp(String? timestamp) => _timestamp = timestamp;
  Map<String, dynamic> get ratee => rates;
  set rate(Rates? rates) => rates = rates;

  RateChangeModel.fromJson(Map<dynamic, dynamic> json) {
    _info = json['info'];
    _description = json['description'];
    _timestamp = json['timestamp'];
    rates = json['rates'] ;
    // != null ? new Rates.fromJson(json['rates']) : null
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['info'] = this._info;
  //   data['description'] = this._description;
  //   data['timestamp'] = this._timestamp;
  //   if (this._rates != null) {
  //     data['rates'] = this._rates!.toJson();
  //   }
  //   return data;
  // }
}

class Rates {
  String? _uSD;
  String? _sEK;
  String? _nOK;
  String? _iLS;
  String? _dKK;
  String? _aUD;
  String? _kWD;
  String? _rUB;
  String? _iNR;
  String? _bND;
  String? _eUR;
  String? _zAR;
  String? _nPR;
  String? _cHF;
  String? _cNY;
  String? _tHB;
  String? _pKR;
  String? _kES;
  String? _eGP;
  String? _bDT;
  String? _lAK;
  String? _sAR;
  String? _iDR;
  String? _kHR;
  String? _sGD;
  String? _lKR;
  String? _nZD;
  String? _cZK;
  String? _jPY;
  String? _vND;
  String? _pHP;
  String? _kRW;
  String? _hKD;
  String? _bRL;
  String? _rSD;
  String? _mYR;
  String? _cAD;
  String? _gBP;

  Rates(
      {String? uSD,
      String? sEK,
      String? nOK,
      String? iLS,
      String? dKK,
      String? aUD,
      String? kWD,
      String? rUB,
      String? iNR,
      String? bND,
      String? eUR,
      String? zAR,
      String? nPR,
      String? cHF,
      String? cNY,
      String? tHB,
      String? pKR,
      String? kES,
      String? eGP,
      String? bDT,
      String? lAK,
      String? sAR,
      String? iDR,
      String? kHR,
      String? sGD,
      String? lKR,
      String? nZD,
      String? cZK,
      String? jPY,
      String? vND,
      String? pHP,
      String? kRW,
      String? hKD,
      String? bRL,
      String? rSD,
      String? mYR,
      String? cAD,
      String? gBP}) {
    if (uSD != null) {
      this._uSD = uSD;
    }
    if (sEK != null) {
      this._sEK = sEK;
    }
    if (nOK != null) {
      this._nOK = nOK;
    }
    if (iLS != null) {
      this._iLS = iLS;
    }
    if (dKK != null) {
      this._dKK = dKK;
    }
    if (aUD != null) {
      this._aUD = aUD;
    }
    if (kWD != null) {
      this._kWD = kWD;
    }
    if (rUB != null) {
      this._rUB = rUB;
    }
    if (iNR != null) {
      this._iNR = iNR;
    }
    if (bND != null) {
      this._bND = bND;
    }
    if (eUR != null) {
      this._eUR = eUR;
    }
    if (zAR != null) {
      this._zAR = zAR;
    }
    if (nPR != null) {
      this._nPR = nPR;
    }
    if (cHF != null) {
      this._cHF = cHF;
    }
    if (cNY != null) {
      this._cNY = cNY;
    }
    if (tHB != null) {
      this._tHB = tHB;
    }
    if (pKR != null) {
      this._pKR = pKR;
    }
    if (kES != null) {
      this._kES = kES;
    }
    if (eGP != null) {
      this._eGP = eGP;
    }
    if (bDT != null) {
      this._bDT = bDT;
    }
    if (lAK != null) {
      this._lAK = lAK;
    }
    if (sAR != null) {
      this._sAR = sAR;
    }
    if (iDR != null) {
      this._iDR = iDR;
    }
    if (kHR != null) {
      this._kHR = kHR;
    }
    if (sGD != null) {
      this._sGD = sGD;
    }
    if (lKR != null) {
      this._lKR = lKR;
    }
    if (nZD != null) {
      this._nZD = nZD;
    }
    if (cZK != null) {
      this._cZK = cZK;
    }
    if (jPY != null) {
      this._jPY = jPY;
    }
    if (vND != null) {
      this._vND = vND;
    }
    if (pHP != null) {
      this._pHP = pHP;
    }
    if (kRW != null) {
      this._kRW = kRW;
    }
    if (hKD != null) {
      this._hKD = hKD;
    }
    if (bRL != null) {
      this._bRL = bRL;
    }
    if (rSD != null) {
      this._rSD = rSD;
    }
    if (mYR != null) {
      this._mYR = mYR;
    }
    if (cAD != null) {
      this._cAD = cAD;
    }
    if (gBP != null) {
      this._gBP = gBP;
    }
  }

  String? get uSD => _uSD;
  set uSD(String? uSD) => _uSD = uSD;
  String? get sEK => _sEK;
  set sEK(String? sEK) => _sEK = sEK;
  String? get nOK => _nOK;
  set nOK(String? nOK) => _nOK = nOK;
  String? get iLS => _iLS;
  set iLS(String? iLS) => _iLS = iLS;
  String? get dKK => _dKK;
  set dKK(String? dKK) => _dKK = dKK;
  String? get aUD => _aUD;
  set aUD(String? aUD) => _aUD = aUD;
  String? get kWD => _kWD;
  set kWD(String? kWD) => _kWD = kWD;
  String? get rUB => _rUB;
  set rUB(String? rUB) => _rUB = rUB;
  String? get iNR => _iNR;
  set iNR(String? iNR) => _iNR = iNR;
  String? get bND => _bND;
  set bND(String? bND) => _bND = bND;
  String? get eUR => _eUR;
  set eUR(String? eUR) => _eUR = eUR;
  String? get zAR => _zAR;
  set zAR(String? zAR) => _zAR = zAR;
  String? get nPR => _nPR;
  set nPR(String? nPR) => _nPR = nPR;
  String? get cHF => _cHF;
  set cHF(String? cHF) => _cHF = cHF;
  String? get cNY => _cNY;
  set cNY(String? cNY) => _cNY = cNY;
  String? get tHB => _tHB;
  set tHB(String? tHB) => _tHB = tHB;
  String? get pKR => _pKR;
  set pKR(String? pKR) => _pKR = pKR;
  String? get kES => _kES;
  set kES(String? kES) => _kES = kES;
  String? get eGP => _eGP;
  set eGP(String? eGP) => _eGP = eGP;
  String? get bDT => _bDT;
  set bDT(String? bDT) => _bDT = bDT;
  String? get lAK => _lAK;
  set lAK(String? lAK) => _lAK = lAK;
  String? get sAR => _sAR;
  set sAR(String? sAR) => _sAR = sAR;
  String? get iDR => _iDR;
  set iDR(String? iDR) => _iDR = iDR;
  String? get kHR => _kHR;
  set kHR(String? kHR) => _kHR = kHR;
  String? get sGD => _sGD;
  set sGD(String? sGD) => _sGD = sGD;
  String? get lKR => _lKR;
  set lKR(String? lKR) => _lKR = lKR;
  String? get nZD => _nZD;
  set nZD(String? nZD) => _nZD = nZD;
  String? get cZK => _cZK;
  set cZK(String? cZK) => _cZK = cZK;
  String? get jPY => _jPY;
  set jPY(String? jPY) => _jPY = jPY;
  String? get vND => _vND;
  set vND(String? vND) => _vND = vND;
  String? get pHP => _pHP;
  set pHP(String? pHP) => _pHP = pHP;
  String? get kRW => _kRW;
  set kRW(String? kRW) => _kRW = kRW;
  String? get hKD => _hKD;
  set hKD(String? hKD) => _hKD = hKD;
  String? get bRL => _bRL;
  set bRL(String? bRL) => _bRL = bRL;
  String? get rSD => _rSD;
  set rSD(String? rSD) => _rSD = rSD;
  String? get mYR => _mYR;
  set mYR(String? mYR) => _mYR = mYR;
  String? get cAD => _cAD;
  set cAD(String? cAD) => _cAD = cAD;
  String? get gBP => _gBP;
  set gBP(String? gBP) => _gBP = gBP;

  Rates.fromJson(Map<String, dynamic> json) {
    _uSD = json['USD'];
    _sEK = json['SEK'];
    _nOK = json['NOK'];
    _iLS = json['ILS'];
    _dKK = json['DKK'];
    _aUD = json['AUD'];
    _kWD = json['KWD'];
    _rUB = json['RUB'];
    _iNR = json['INR'];
    _bND = json['BND'];
    _eUR = json['EUR'];
    _zAR = json['ZAR'];
    _nPR = json['NPR'];
    _cHF = json['CHF'];
    _cNY = json['CNY'];
    _tHB = json['THB'];
    _pKR = json['PKR'];
    _kES = json['KES'];
    _eGP = json['EGP'];
    _bDT = json['BDT'];
    _lAK = json['LAK'];
    _sAR = json['SAR'];
    _iDR = json['IDR'];
    _kHR = json['KHR'];
    _sGD = json['SGD'];
    _lKR = json['LKR'];
    _nZD = json['NZD'];
    _cZK = json['CZK'];
    _jPY = json['JPY'];
    _vND = json['VND'];
    _pHP = json['PHP'];
    _kRW = json['KRW'];
    _hKD = json['HKD'];
    _bRL = json['BRL'];
    _rSD = json['RSD'];
    _mYR = json['MYR'];
    _cAD = json['CAD'];
    _gBP = json['GBP'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['USD'] = this._uSD;
  //   data['SEK'] = this._sEK;
  //   data['NOK'] = this._nOK;
  //   data['ILS'] = this._iLS;
  //   data['DKK'] = this._dKK;
  //   data['AUD'] = this._aUD;
  //   data['KWD'] = this._kWD;
  //   data['RUB'] = this._rUB;
  //   data['INR'] = this._iNR;
  //   data['BND'] = this._bND;
  //   data['EUR'] = this._eUR;
  //   data['ZAR'] = this._zAR;
  //   data['NPR'] = this._nPR;
  //   data['CHF'] = this._cHF;
  //   data['CNY'] = this._cNY;
  //   data['THB'] = this._tHB;
  //   data['PKR'] = this._pKR;
  //   data['KES'] = this._kES;
  //   data['EGP'] = this._eGP;
  //   data['BDT'] = this._bDT;
  //   data['LAK'] = this._lAK;
  //   data['SAR'] = this._sAR;
  //   data['IDR'] = this._iDR;
  //   data['KHR'] = this._kHR;
  //   data['SGD'] = this._sGD;
  //   data['LKR'] = this._lKR;
  //   data['NZD'] = this._nZD;
  //   data['CZK'] = this._cZK;
  //   data['JPY'] = this._jPY;
  //   data['VND'] = this._vND;
  //   data['PHP'] = this._pHP;
  //   data['KRW'] = this._kRW;
  //   data['HKD'] = this._hKD;
  //   data['BRL'] = this._bRL;
  //   data['RSD'] = this._rSD;
  //   data['MYR'] = this._mYR;
  //   data['CAD'] = this._cAD;
  //   data['GBP'] = this._gBP;
  //   return data;
  // }
}
