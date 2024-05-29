
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/3QHR.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/3QHR.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [5664,5668,5563,5575,5203,5206,4606,5565,5566,5567,4770,4635,5671,4616,4638,4605,4612,4613,5669,9011,9016,9008,4598,4594,4600,4651,5167,4753,5146,5147,5145,5155,5591,5663,5172,5175,5592,5191,5192,5199,5232,5148,4652,4768,4769,5149,5150,5151] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [1094,695,702,1095,709,1066,694,413,654,516,1166,1167,1168,1171,1174,1078,256,675,678,686,652,517,648,649,650,651,653,96,97,99,101,103,154,139,141,155,271,272,273,108,109,735,138,115,116] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3216,3218,3219,3196,9121,9122,9120,362,368,373,3162,3163,345,346,347,348,333,400,402,365,379,380,134,136,9118,9114,1293,1189,1195,1196,1288,1309] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6688,6694,6695,6900,6899,6896,5932,5945,6379,6380,6381,6337,6346,6351,6353,6703,6704,6895,6702] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2402,2404,2408,1435,1452,1873,1874,1875,1849,1840,1838,1854,1855,1856,2403,2207,2191,1884,1877,1878,1891] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [4897,4898,4899,4870,4871,4876,4877,5686,5693,4862,4631,4633,4859,4865,4869,7659,7715,4830,4842,9038,9040,9034,5790,9041,9042,5785,7693,7716,5806,5692,9021] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [130,133,138,115,116,119,126,108,109,1070,139,141,155,272,273,9095,1171,1173,1174,1066,1078,9096,1055,1068] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [590,4536,3390,569,3421,3422,3452,3417,3418,3419,3453,4506,4507,4509,4499,4500,4502,4524,4534,4535,3429] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [7517,1,550,7926,7950,7951,7518,236,237,48,50,7508,539,541,642,538,547,7958] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2593,3813,3814,3823,3824,3764,3888,3532,3766,3815,3515,3865,3520,3526,2591,2600,2582,3866,2943,2909,2937,2940,2934,2936,2599,2971,3774,3830] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [3539,3540,3574,3575,3606,3692,3604,3719,3720,2882,2872,2874,2878,2879,2881,4389,1259,1260,1261,1244,1246,1247] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [8036,7378,8886,8216,8217,5741,5743,8072,8071,8103,8186,8189,8196,8101,8037,7369,5757,5758] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7440,8022,7090,8311,8340,8363,8017,8362,8385,7431,7468,8271,8267,8265,8327,8310,8261,8012,8029,8263,7096,7097,7054,7079,7437,7433,7434,7406] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [5,9,12,10,11,7950,7951,2,3,7949,39,37,38,27,7921,7924,7915,7920,5087,7888,7889,7916,7918,7919,5066,5074,5075,5080,7917] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [1218,3173,3182,3183,990,991,3547,3548,1221,1230,1231,1281,1259,1261,3503,3504,3510,3549,3540,3546,3542,2888,2890,2886,2887] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [3011,3020,3021,5035,5044,3461,4498,4547,4697,4733,3454,5045,5047,5036,5139,5038] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [5752,5757,5780,5727,5728,7680,5758,5715,7670,5719,7384,7385,7387,7383,8039,8043,8044,8045,8046,8037,5741,8070,8072,8071] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5087,4848,7878,7880,7876,7877,7914,4857,4805,7916,5071,5072,5083] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [586,590,308,3379,3380,575,3420,3381,3383,351,360,3411] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5623,4988,5649,5650,5633,5159,5177,5605,5608,5164,5023] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [5559,5550,5864,9001,5222,5223,5851,5853,5865,5832,8998,5568,5220,5221] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [525,526,662,1152,1153,680,1111,1108,489,492,1126,1136,667] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [1053,1061,1062,1367,1071,1580,723,724,725,726,1354,1356,9081,9075,9078] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        