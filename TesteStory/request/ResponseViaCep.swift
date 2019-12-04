//
//  responseVia.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import Foundation

struct ResponseViaCep: Codable {
    var mTown: String?
    var mCEP: String?
    var mComplement: String?
    var mGia: String?
    var mIBGE: String?
    var mCity: String?
    var mLocalidade: String?
    var mStreet: String?
    var mUF: String?
    var mUnidade: String?
    
    enum CodingKeys: String, CodingKey {
        case mTown = "bairro"
        case mCEP = "cep"
        case mComplement = "complemento"
        case mGia = "gia"
        case mIBGE = "ibge"
        case mCity = "cidade"
        case mLocalidade = "localidade"
        case mStreet = "logradouro"
        case mUF = "uf"
        case mUnidade = "unidade"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.mTown = try? container.decode(String.self, forKey: .mTown)
        self.mCEP = try? container.decode(String.self, forKey: .mCEP)
        self.mComplement = try? container.decode(String.self, forKey: .mComplement)
        self.mGia = try? container.decode(String.self, forKey: .mGia)
        self.mIBGE = try? container.decode(String.self, forKey: .mIBGE)
        self.mCity = try? container.decode(String.self, forKey: .mLocalidade)
        self.mLocalidade = try? container.decode(String.self, forKey: .mLocalidade)
        self.mStreet = try? container.decode(String.self, forKey: .mStreet)
        self.mUF = try? container.decode(String.self, forKey: .mUF)
        self.mUnidade = try? container.decode(String.self, forKey: .mUnidade)
    }
}
