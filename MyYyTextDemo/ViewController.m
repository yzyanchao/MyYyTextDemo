//
//  ViewController.m
//  MyYyTextDemo
//
//  Created by yan on 2018/7/4.
//  Copyright © 2018 yan. All rights reserved.
//

#import <YYText.h>
#import "ViewController.h"
#import "MyTextCell.h"

@interface ViewController ()

@property (nonatomic, copy) NSArray *data;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *heights;

@end

@implementation ViewController

static NSString *cellId = @"MyTextCellIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = [NSArray arrayWithObjects:
             @"子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”。 有子曰：“其为人也孝弟，而好犯上者，鲜矣；不好犯上而好作乱者，未之有也。君子务本，本立而道生。孝弟也者，其为仁之本与！”。 子曰：“巧言令色，鲜矣仁！”。 曾子曰：“吾日三省吾身：为人谋而不忠乎？与朋友交而不信乎？传不习乎？”。子曰：“道千乘之国，敬事而信，节用而爱人，使民以时。”。子曰：“弟子入则孝，出则弟，谨而信，泛爱众，而亲仁，行有余力，则以学文。”。子夏曰：“贤贤易色；事父母，能竭其力；事君，能致其身；与朋友交，言而有信。虽曰未学，吾必谓之学矣。”。子曰：“君子不重则不威，学则不固。主忠信，无友不如己者，过，则勿惮改。”。曾子曰：“慎终追远，民德归厚矣。”。子禽问于子贡曰：“夫子至于是邦也，必闻其政，求之与，抑与之与？”子贡曰：“夫子温、良、恭、俭、让以得之。夫子之求之也，其诸异乎人之求之与？”。子曰：“父在，观其志；父没，观其行；三年无改于父之道，可谓孝矣。”",
             @"子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”。 有子曰：“其为人也孝弟，而好犯上者，鲜矣；不好犯上而好作乱者，未之有也。君子务本，本立而道生。孝弟也者，其为仁之本与！”。 子曰：“巧言令色，鲜矣仁！”。 曾子曰：“吾日三省吾身：为人谋而不忠乎？与朋友交而不信乎？传不习乎？”。子曰：“道千乘之国，敬事而信，节用而爱人，使民以时。”。子曰：“弟子入则孝，出则弟，谨而信，泛爱众，而亲仁，行有余力，则以学文。”。子夏曰：“贤贤易色；事父母，能竭其力；事君，能致其身；与朋友交，言而有信。虽曰未学，吾必谓之学矣。”。子曰：“君子不重则不威，学则不固。主忠信，无友不如己者，过，则勿惮改。”。曾子曰：“慎终追远，民德归厚矣。”。子禽问于子贡曰：“夫子至于是邦也，必闻其政，求之与，抑与之与？”子贡曰：“夫子温、良、恭、俭、让以得之。夫子之求之也，其诸异乎人之求之与？”。子曰：“父在，观其志；父没，观其行；三年无改于父之道，可谓孝矣。”",
             @"子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”。 有子曰：“其为人也孝弟，而好犯上者，鲜矣；不好犯上而好作乱者，未之有也。君子务本，本立而道生。孝弟也者，其为仁之本与！”。 子曰：“巧言令色，鲜矣仁！”。 曾子曰：“吾日三省吾身：为人谋而不忠乎？与朋友交而不信乎？传不习乎？”。子曰：“道千乘之国，敬事而信，节用而爱人，使民以时。”。子曰：“弟子入则孝，出则弟，谨而信，泛爱众，而亲仁，行有余力，则以学文。”。子夏曰：“贤贤易色；事父母，能竭其力；事君，能致其身；与朋友交，言而有信。虽曰未学，吾必谓之学矣。”。子曰：“君子不重则不威，学则不固。主忠信，无友不如己者，过，则勿惮改。”。曾子曰：“慎终追远，民德归厚矣。”。子禽问于子贡曰：“夫子至于是邦也，必闻其政，求之与，抑与之与？”子贡曰：“夫子温、良、恭、俭、让以得之。夫子之求之也，其诸异乎人之求之与？”。子曰：“父在，观其志；父没，观其行；三年无改于父之道，可谓孝矣。”",
             @"子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”。 有子曰：“其为人也孝弟，而好犯上者，鲜矣；不好犯上而好作乱者，未之有也。君子务本，本立而道生。孝弟也者，其为仁之本与！”。 子曰：“巧言令色，鲜矣仁！”。 曾子曰：“吾日三省吾身：为人谋而不忠乎？与朋友交而不信乎？传不习乎？”。子曰：“道千乘之国，敬事而信，节用而爱人，使民以时。”。子曰：“弟子入则孝，出则弟，谨而信，泛爱众，而亲仁，行有余力，则以学文。”。子夏曰：“贤贤易色；事父母，能竭其力；事君，能致其身；与朋友交，言而有信。虽曰未学，吾必谓之学矣。”。子曰：“君子不重则不威，学则不固。主忠信，无友不如己者，过，则勿惮改。”。曾子曰：“慎终追远，民德归厚矣。”。子禽问于子贡曰：“夫子至于是邦也，必闻其政，求之与，抑与之与？”子贡曰：“夫子温、良、恭、俭、让以得之。夫子之求之也，其诸异乎人之求之与？”。子曰：“父在，观其志；父没，观其行；三年无改于父之道，可谓孝矣。”",
             @"子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”。 有子曰：“其为人也孝弟，而好犯上者，鲜矣；不好犯上而好作乱者，未之有也。君子务本，本立而道生。孝弟也者，其为仁之本与！”。 子曰：“巧言令色，鲜矣仁！”。 曾子曰：“吾日三省吾身：为人谋而不忠乎？与朋友交而不信乎？传不习乎？”。子曰：“道千乘之国，敬事而信，节用而爱人，使民以时。”。子曰：“弟子入则孝，出则弟，谨而信，泛爱众，而亲仁，行有余力，则以学文。”。子夏曰：“贤贤易色；事父母，能竭其力；事君，能致其身；与朋友交，言而有信。虽曰未学，吾必谓之学矣。”。子曰：“君子不重则不威，学则不固。主忠信，无友不如己者，过，则勿惮改。”。曾子曰：“慎终追远，民德归厚矣。”。子禽问于子贡曰：“夫子至于是邦也，必闻其政，求之与，抑与之与？”子贡曰：“夫子温、良、恭、俭、让以得之。夫子之求之也，其诸异乎人之求之与？”。子曰：“父在，观其志；父没，观其行；三年无改于父之道，可谓孝矣。”",
             nil];
    
    _heights = [NSMutableArray arrayWithCapacity:_data.count];
    for (int i = 0; i < _data.count; i++) {
        [_heights addObject:[NSNumber numberWithFloat:0]];
    }
    
    [self.tableView registerClass:[MyTextCell class] forCellReuseIdentifier:cellId];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTextCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[MyTextCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    [cell setData:self.data[indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = self.heights[indexPath.row].floatValue;
    if (height == 0) {
        MyTextCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell != nil) {
            height = [cell heightForMyLabel] + 16;
            self.heights[indexPath.row] = [NSNumber numberWithFloat:height];
            return height;
        }
    } else {
        return height;
    }
    
    return 44;
}

@end
