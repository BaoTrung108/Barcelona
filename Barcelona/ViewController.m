//
//  ViewController.m
//  Barcelona
//
//  Created by trung bao on 15/10/2015.
//  Copyright © 2015 baotrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *tiendaoscreen;
@property (weak, nonatomic) IBOutlet UILabel *tiendaophaiscreen;
@property (weak, nonatomic) IBOutlet UILabel *tiendaotraiscreen;
@property (weak, nonatomic) IBOutlet UILabel *hocongscreen;
@property (weak, nonatomic) IBOutlet UILabel *tienvephaiscreen;
@property (weak, nonatomic) IBOutlet UILabel *tienvetraiscreen;
@property (weak, nonatomic) IBOutlet UILabel *hauvephaiscreen;
@property (weak, nonatomic) IBOutlet UILabel *trungvephaiscreen;
@property (weak, nonatomic) IBOutlet UILabel *trungvetraiscreen;
@property (weak, nonatomic) IBOutlet UILabel *hauvetraiscreen;
@property (weak, nonatomic) IBOutlet UILabel *thumonscreen;
@end

@implementation ViewController{
    NSArray *tiendao;
    NSArray *tiendaophai;
    NSArray *tiendaotrai;
    NSArray *hocong;
    NSArray *tienvephai;
    NSArray *tienvetrai;
    NSArray *hauvephai;
    NSArray *hauvetrai;
    NSArray *trungvephai;
    NSArray *trungvetrai;
    NSArray *thumon;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tiendao=@[@"Luis Suarez",@"lionel Messi"];
    tiendaophai=@[@"Lionel Messi",@"Sandro"];
    tiendaotrai=@[@"Neymar",@"Munir"];
    hocong=@[@"Andres Iniesta",@"Ivan Rakitic"];
    tienvephai=@[@"Sergio Busquets",@"Javier Mascherano",@"Aleix Vidal"];
    tienvetrai=@[@"Rafinha",@"Sergi Roberto"];
    hauvephai=@[@"Daniel Alves",@"Jeremy Mathieu"];
    hauvetrai=@[@"Jordi Alba",@"Douglas",@"Adriano"];
    trungvephai=@[@"Gerard Pique",@"Marc Bartra"];
    trungvetrai=@[@"Javier Mascherano",@"Thomas Vermaelen"];
    thumon=@[@"Marc-Andreter Stegen",@"Claudio Bravo",@"Jordi Masip"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)chonCauthu:(id)sender {
    int numbertiendaophai=arc4random_uniform(tiendaophai.count);
    self.tiendaophaiscreen.text=tiendaophai[numbertiendaophai];
    if (numbertiendaophai==0) {
        self.tiendaoscreen.text=tiendao[0];
    }else{ int numbertiendao=arc4random_uniform(tiendao.count);
        self.tiendaoscreen.text=tiendao[numbertiendao];
    }
    int numbertiendaotrai=arc4random_uniform(tiendaotrai.count);
    self.tiendaotraiscreen.text=tiendaotrai[numbertiendaotrai];
    int numberhocong=arc4random_uniform(hocong.count);
    self.hocongscreen.text=hocong[numberhocong];
    int numbertienvetrai=arc4random_uniform(tienvetrai.count);
    self.tienvetraiscreen.text=tienvetrai[numbertienvetrai];
    int numberhauvephai=arc4random_uniform(hauvephai.count);
    self.hauvephaiscreen.text=hauvephai[numberhauvephai];
    int numberhauvetrai=arc4random_uniform(hauvetrai.count);
    self.hauvetraiscreen.text=hauvetrai[numberhauvetrai];
    int numbertrungvephai= arc4random_uniform(trungvephai.count);
    self.trungvephaiscreen.text=trungvephai[numbertrungvephai];
    int numberthumon=arc4random_uniform(thumon.count);
    self.thumonscreen.text=thumon[numberthumon];
    int numbertienvephai=arc4random_uniform(tienvephai.count);
    self.tienvephaiscreen.text=tienvephai[numbertienvephai];
    if (numbertienvephai==1) {
        self.trungvetraiscreen.text=trungvetrai[1];
    }else {
        int numbertrungvetrai=arc4random_uniform(trungvetrai.count);
        self.trungvetraiscreen.text=trungvetrai[numbertrungvetrai];
    }
}

@end
