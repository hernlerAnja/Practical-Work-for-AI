
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
        
        load "data/3VRZ.pdb", protein
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
 
        load "data/3VRZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5899,5907,5998,5151,5152,5153,5036,5034,5035,4984,4985,4986,5137,5138,5140,5145,5149,5991,5992,5993,5484,5486,5381,5485,5470,5510,5511,5923,5529,5530,5924,5518,4982,5504,5506,5507,5502,5537,5538,5533,5562,4978,4979,4980] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1680,1682,1683,2528,2529,1567,1684,2530,2455,2060,2061,2064,2068,2069,2092,1566,1511,1509,1510,1516,1513,1514,2523,2524,2438,2430,2522,1912,2016,2017,1668,1894,1895,2454,2042,2038,2041,1669,1671,1676,1666,2033,1896] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2001,2000,2002,1912,2017,1894,1895,1819,2534,2544,1896,1764,1787,1794,1795,1798,1770,1771,2545,1790,1913,1893,2550,2552,2546,2547,1680,1682,2529,2523,2524,2522,2568] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4134,4136,4394,4400,5672,5694,5695,4100,4078,4079,5671,5690,5693,4102,4103,4107,4099,4406,4405,6848,6849,4403,6887,4418,4409,4414,6923,6861,6820,6844,6851,6812,4101,6893,5662,5661,5659,5660,5664,5689,6853,4386,4420] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5237,5239,5259,6013,6015,6016,6019,6014,6021,5471,5263,5264,5267,5288,5233,5258,5235,6003,5992,5993,5994,5995,5149,5469,5380,5381,5382,5470,5998,5151] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [665,667,937,931,638,633,634,630,631,2220,2221,2224,2225,2226,2227,610,2191,925,632,940,3367,3381,3369,3371,3364,3368,934,936,917,951,3340,3332,945,3413,3443,3407,2202,2203,2192,2193,2218,2196] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [584,559,561,652,557,562,563,1294,1297,1298,564,568,53,554,495,497,498,545,520,521,522,513,502,51,65,526,425,63,445,1302,1299] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4767,4768,4771,4766,3533,3534,3532,3520,3523,3966,3995,4773,4023,4029,4030,4031,4032,4014,3982,3964,3989,3990,3991,4121,3522,3967,3970,3894,4036,4033,4037,4053] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3583,3584,3758,3862,3863,3865,3582,3602,3755,3751,3753,4834,4837,3605,3867,4838,4842,3611] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [618,2277,2278,2279,2280,3315,3344,590,616,617,641,606,589,779] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2534,2531,2535,2538,1890,2513,1818,1912,1817,1841,1913,1886,1893,2523] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4058,4248,6824,6795,5748,4085,4086,5747,5749,4059,4075] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1372,1373,398,1375,1365,393,394,396,113,116,286,282,284] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3020,2888,3182,3184,2780] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1913,1403,1927,1911,1402,2001,2002] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [6260,6368,6500,6457,6662,6664] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        