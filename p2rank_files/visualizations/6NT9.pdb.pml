
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
        
        load "data/6NT9.pdb", protein
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
 
        load "data/6NT9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [117,118,119,123,124,121,170,130,169,171,279,654,649,1199,1200,1201,1202,294,295,296,122,1193,1194,499,1085,671,676,1083,674,691,694,1084,1061] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [6038,6039,6040,5454,5609,6149,5124,5125,5126,5604,5079,5085,6016,5251,6154,6155,6156,6157,5249,5250,6148,5072,5073,5074,5077,5076,5078,5234,5649,5629,5646,5626,5631] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1196,1200,1201,294,295,650,400,633,361,398,649,516,514,1193,1195,499,1211,1209,1203,1206,1213,424,497,421,420] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5249,5250,5588,5353,6148,5452,6161,6164,5379,6166,6168,5469,5471,6155,6156,6150,6151,6158,5454,5604,5605] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2489,8121,8123,8124,8125,8084,8088,8085,3168,3169,3170,3129,3166,2655,2656,3130,7610,7620,7621,7622,7444,7623,7596,7611,3133,2486,3205,7441,8160,2641,2665,2666,2654,2642,2668,2623,2667] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1764,1770,1776,1782,2215,2650,2649,2651,3080,3079,3049,3050,3052,2784,2783,2788,3062,1751,2195,2196,2197,2198,2193,3115,2200,2213,2199,3104,3141,3113,2785,2648] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [8035,8068,7148,7152,8070,7738,7739,7740,7603,7604,7606,8004,8005,8034,8007,8017,7743,7154,7155,7168,7170,7150,7153,6737,7151,6719,6731,6706,6725,8059,8096] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5481,5477,5478,5479,5008,5505,5488,5229,5009,5171,5173] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [523,524,53,54,522,533,550,274,216,218,526] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6062,6063,6065,6070,3977,4007,4008,4329,4330,4286,4040] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [8336,8339,3384,3388,8366,8368,8365,8370,3410,3411,3413,3415,3416,8343,9750,3381,3412,3414,4795] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3157,3846,3133,3884,3134,3155,3154,3191,7575,7579,7580,3844] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1748,1741,1742,1745,1746,1747,1622,1719,1720,1444,1621,1760,1633,1420,1421,1393,1394,1432,1467,1436,1431] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6375,6696,6697,6700,6701,6702,6703,6422,6376,6386,6387,6576,6577,6399,6674,6588,6349,6348,6391,6675,6715] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6924,6262,6908,6909,6925,6274,6267,6272,6258,6880] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [750,714,716,1218,1256,1245,738,1404,1405,1438,1439] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6825,6964,6335,6816,6998] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2009,1380,1870,1861,2043] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        