
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
        
        load "data/6NYB.pdb", protein
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
 
        load "data/6NYB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3876,3877,3878,3879,3894,3895,3908,3915,4012,2996,2997,3000,4117,4120,2988,2991,2995,2999,3873,3135,3136,3137,4013,3507,4014,4015,4016,4009,4010,4011,4017,4020,4026,4027,4004,4007,3003,3004,3005,3006,3151,3153,4093,3312,3493,3494,3313,3395,3383,2221,4171,4145,4159,4161,2211,4132,3384,3385,2981,3020,2984,2985,2987,4154,4069,4099,4072,4042,4067,4071,4094,4096,4089,4090,4095,4091,3865,4073,4029,4062,4063,3289,4065,4038,4178,2201,3864,2203,2208,2196] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1545,1546,1662,1181,617,1575,1576,1010,1126,1127,1131,1149,1148,1151,1169,1154,1155,1655,1661,1556,614,620,621,622,666,749,667,763,630,765,1171] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [5405,6011,6012,6013,6006,6048,486,474,481,487,469,5424,5425,5426,5427,6081,6082,5434,5428,5457,5458,5456,6040,6041,6042,6071,6068,6069,464,465,459,5460,6117,5367,6401,6783,6786,6399,5980,6395,6409,6411,6405,6410,6813,6815,6400,6432] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [7270,7851,7886,7248,7269,7297,7268,7888,2763,2768,7304,7300,7301,7302,7247,2759,2780,7879,8238,8243,2778,2779,8237,8239,8240,8242,7849,8247,7847,8249,7211,8620,7882,7909,7906,2758,7880,7954,7920,7919,2757] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1236,2145,1237,1238,1239,3197,4080,3215,3217,4057,4081,2130,2133,2134,2170,2138,2142,2156,2166,2167,2168,4104,4106,4107,4083,4085,4086,1199,1200,3175,3187,3216] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2976,3931,3932,3533,2981,3020,3018,3019,2974,2978,2972,2973,2977,3581,3549,3528,3531,3532,3117,3512,3906,3556,3557,3136,3137,3507,3508,4015,4016,3915] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5459,5460,458,206,5511,199,202,203,204,205,464,456,446,451,454,460,185,187,189,449,432,5548,431,442,480,92,479,5457,5455,103,193,81,473,467,470] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1547,1548,1549,3178,3179,3180,4111,1546,1535,1825,1826,1534,1557,1516,1518,1556,630,765,631,632,633,626,638,648,637,1824] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [369,19,42,384,18,374,376,375,380,381,41,43,305,306,307,2818,285,371,347,348,2816,283] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [98,99,7082,5220,5227,5491,5222,5223,5224,5238,5464,5470,5500,7052,7047,7051,7071,7073,7058,7054,5203,7335] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6307,6419,6420,6338,6339,6447,6638,6640,6641,6424,6430,6376,6417,6415,6418,6309,6668,6634,6636,6374] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [8255,8450,8215,8503,8506,8257,8470,8145,8147,8285,8476,8478,8479,8468,8475,8473] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1489,1487,1676,1678,1686,905,906,1697,1690,1480,1485,1675] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2946,3025,3026,2942,2943,3046,2939,2920,2931,2938,3028,3145,3124,3126] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1652,1655,1656,1663,1661,1669,1671,1126,1127,1684,1112] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        