
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
        
        load "data/6VWJ.pdb", protein
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
 
        load "data/6VWJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5528,5585,5060,5011,4727,5527,5658,5702,5921,5261,5296,5447,5448,5473] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [5152,4708,4709,5169,4297,4336,4338,4339,1264,1266,3967,5178,5177,1198,1195,1263,5188,5196,5198,4372,4745,4373,5175,1213,1215,1217,1218] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [7155,7169,7131,7141,4224,4225,7167,5078,7524,7526,4239,7244,7245,7246,3889,3891,4626,4641,4640] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4943,4353,4409,4100,4102,4103,3978,4051,4408,4410,4826,4765,4861,4049] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [5317,5313,1216,1218,5315,1134,5678,5679,5278,5312,5178,5176] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [6432,973,975,6436,9780,993,9040,9041,971,10174,10175,11532,11533,9082,9081,6461,6458,6464,6468,6466,9781] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [5314,5317,5318,5313,1216,5315,1134,5678,5679,5721,1132,1151,1214,1128,1153,1154,5278,5312] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1868,1767,1737,1738,1749,1755,630,1470,1507,1508,1509,1510,1511,1867,595,597,600,1726,1710,636,1775,635,1452] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [5903,5937,5938,6039,8461,8477,8459,6420,6422,8462,6397,6402,6415,6416,6419,5913,5915,6025,6026,6027,6028,5933] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5782,5781,6163,662,1846,659,6162,6230,2209,2211,1845,2206,2207,2210,2212,5768,6160] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [901,904,880,9215,9173,884,887,10773,10770,9174,940,11507,10791,10792,11506] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        