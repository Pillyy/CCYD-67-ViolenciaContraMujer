import { BrowserModule } from '@angular/platform-browser';
import { NgModule, ErrorHandler } from '@angular/core';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { BienvenidaPage } from '../pages/bienvenida/bienvenida';
import { PerfilPage } from '../pages/perfil/perfil';
import { PerfilCrearPage } from '../pages/perfil-crear/perfil-crear';
import { HistoriasPage } from '../pages/historias/historias';
import { AcercaPage } from '../pages/acerca/acerca';
import { TrofeoPage } from '../pages/trofeo/trofeo';


@NgModule({
  declarations: [
    MyApp,
    BienvenidaPage,
    PerfilPage,
    PerfilCrearPage,
    HistoriasPage,
    AcercaPage,
    TrofeoPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    BienvenidaPage,
    PerfilPage,
    PerfilCrearPage,
    HistoriasPage,
    AcercaPage,
    TrofeoPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
