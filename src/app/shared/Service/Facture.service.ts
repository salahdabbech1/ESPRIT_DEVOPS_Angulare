import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class FactureService {
  readonly API_URL = 'http://44.212.25.105:4200/SpringMVC/facture';

  constructor(private httpClient: HttpClient) { }

  getAllFactures() {
    return this.httpClient.get(`${this.API_URL}/retrieve-all-factures`)
  }
  addFacture(facture : any) {
    return this.httpClient.post(`${this.API_URL}/add-facture`, facture)
  }
}
