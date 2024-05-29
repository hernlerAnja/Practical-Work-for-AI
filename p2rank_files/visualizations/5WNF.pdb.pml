
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
        
        load "data/5WNF.pdb", protein
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
 
        load "data/5WNF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1613,638,640,641,650,1749,1597,1757,938,832,671,813,936,1748,1750,1735,1612,1733,1734,1635,1624,1727,1651,635,634,628,631,633,629,1286,1652,1259,2942,2944,2946,1625,816,982,814,1726,1233,686,688,687,1234,1238,1256,799,1250,651,653,657,658,662,663,665,933,934,935,937,939,667,917,668] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [6803,7460,7826,9052,9054,9056,6809,6862,6988,7408,6807,6860,6861,6973,7899,7901,7798,7804,7824,7825,6990,7900,7407,9057,7412,7799,6814,6815,6823,6824,6812,7906,7909,7809] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [10597,10935,9944,12248,12253,12255,12257,12258,12242,10544,10545,9998,11037,10110,10946,10941,11043,11036,9951,9952,10125,10127,11046,9949,9940,9946,12261,9999,9997,10962,10963,10549,11038] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3917,4880,4881,4043,4045,4955,4956,4462,4463,4315,3862,5952,3915,3916,4028,3858,3864,3867,4964,4864,4515,4853,5955,3870,3869,3878,3879,4467] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [72,73,4,39,40,43,45,47,4353,8,9,10,11,6128,6145,6139,2,3962,106,3406,3407,82,6127,6144,3765,3415,6133,3772,6129,6130,6131,6134,3755,3759,3414,35,36,3756,3803,3749] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [7348,6437,7339,7342,6434,6462,1842,1992,1994,2009,1999,9209,6444,6449,2008,2010,2012,2014,2015,9121,9123,9127,6473,6475,9147,9149,9197,9200,6446,6476,6477,9155,9156,9188,9138,9124,9128,9129,9131] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3203,3204,3206,3207,526,530,3301,3302,3201,3269,3272,3275,3276,3277,3278,520,3262,3268,536,574,3264,3237,3239,3240,103,177,178,3335,3311,185,186,3209,3210,3214,1124,543,207] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [9346,9376,9343,9345,9375,9348,9350,9352,9379,9384,9385,9409,6283,6285,9280,9298,9301,9335,6694,9342,9338,9310,9312,9287,6360,9283,9284,9286,6359,6345,6351,6352,6277,6302,6305,6710,6711,6714,9285,6700] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [6824,6825,6827,6832,6843,7922,7924,7931,7156,7907,7908,7909,7771,7769,7786,7787,7809,6990,6988,6836,7006,6839,7111,7112,7113,7107,7108,7109,7110,6840,6841,6842,7091,6837,6831,7090,8053,8054,8056] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [10247,10249,10924,11059,10124,10143,10125,10127,11046,10250,11061,11068,10908,11044,11045,10293,10947,10946,9964,9968,9969,9973,9974,9961,9980,9981,9976,9978,9979,10228] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4164,4166,4168,3892,3894,3896,3878,3879,3882,3891,3887,4826,4841,4842,4986,4962,4963,4964,4864,4977,4061,4165,4167,4163,4978,4979,3886,3893,3895,3897,4146,4043,4045] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [6216,6255,6256,9406,9412,9416,6219,6221,9414,9435,12511,12512,12528,9431,9434,12529,12517,6247,6280,9480,9481,6246,9487,9488,9489,12515,9831,6278,9473,9474,9837] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [6328,9246,6311,6320,6324,6327,7163,7174,7165,6304,6310,6330,7136,7137,9239,9737,9749,9750,7127,7128,7129,7130,7147,7132,7135,9734,9735] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [156,157,154,155,956,957,958,960,955,962,961,963,3166,150,153,989,991,1000,130,954,137,146,959,3653,3652,3655,3667,3668] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [3379,424,4187,4190,4192,4185,4220,4183,4184,4218,4229,423,3383,3384,3385,3359,3364,3365,3366,3374,3375,4261,3378] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [3504,6044,4110,3532,4397,4393,6056,3489,3490,5971,5972,6047,4111,6045,4109,5985,6002,6003,6035,5974] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [9449,9453,12477,10265,10300,10302,10305,9456,9457,9458,9459,10266,10274,10272,9433,9440,10309,10310,10311] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [12352,12355,12428,12431,12359,12362,9563,9605,9606,9604,12419,12386,12358,12440,10476,10479,9578] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [275,260,301,303,3076,3051,3048,3120,3047,3058,1168,261,263,3129] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [6905,6967,6929,6947,6949,9313,9314,7299,7300] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [2593,2594,9142,9145,9164,9165,2050,2051,2052,2542,2543,2544,1809,1816,1825,1818,2038,2040,9148,9149,9146] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [792,1125,775,1126,754,3238,755] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        