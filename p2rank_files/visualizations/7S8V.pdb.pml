
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
        
        load "data/7S8V.pdb", protein
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
 
        load "data/7S8V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5855,5298,5856,4856,4857,4796,4838,5850,5315,5316,5852,5854,1812,637,651,638,639,1774,6255,6254,6256,680,679,4878,4879,5346,5347,5349,694,695,1745,1746,1747,1748,726,706,692,5301,5303,590,591,1648,2212,2287,2470,2471,5299,4800,4818,4819,4820,4821,1698,1697,1814,2210,2254] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [732,733,739,808,5891,7101,7102,743,746,748,830,865,7099,6760,6761,6746,766,6661,6720,976,977,6286,6300,5889,6287,721,724,725,726,727,6255] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [7067,6452,6129,6130,5732,6393,6395,6396,6398,5926] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [8477,8478,8221,8428,8429,4647,8440,8442,8019,8021,8408,8277,8279,8280,4317,8281,4291,4292,4651,8002,8074,8003,4648,4649,8169,8171,8226,8227] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [11323,11003,11036,11038,11004,11888,12207,12251,11826,11894,11889,11890,11892,11823,11349,11350,11351,11354,11355,11773,11774,11352,11921,11922,12208,12211,11037] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [8054,7751,8053,8072,7753,4293,4615,8074,8093,5101,4614,4214,4231,4234,4257,4268,5081,5079,4603,4217,7754,7653] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6510,6513,9040,6939,9037,9039,6381,6415,9069,7029,6918,6920,6333,6335,6359,6387,6391,6592,6557,6590,6555,6589] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6342,6343,6346,6347,6996,6756,6766,6767,6334,6336,6681,6682,6754,6735,6730,6753,6729,6763] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1518,1517,1519,67,69,102,6206,2484,114,115,6191,1435,1437,5789,5807,6204,6626] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [6947,6949,10639,10640,9600,12040,9613,9615,9900,9896,9899,9901,10616,9570,9571,9574,9572,9585,9586,10251,9594] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6022,6425,7271,7273,6426,7495,7497,7320,7321,7168,7203,7208,7207,6025,6023,7206,7216,7263] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4544,4545,4547,5063,5447,5007,5009,4496] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2565,3923,2168,2171,767,725,726,727,692,6746,766,6661,6720,6721,6660,976,977,1009] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        