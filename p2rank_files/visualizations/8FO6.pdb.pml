
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
        
        load "data/8FO6.pdb", protein
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
 
        load "data/8FO6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [603,616,617,700,677,681,701,1240,682,630,613,618,623,622,1083,4341,4343,4322,4352,4353,4335,4318,1237,1238,1239,4260,4663,4287,4289,4662,4660,4661,4292,4296,4294,671,296,298,1097,319,625] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [877,1697,1761,1781,1782,849,850,851,743,745,537,538,539,527,528,1685,1604,1606,1680,1681,1623,1677,1605,1311,847,848,1343,1345,1344,1770,1771,1773,1777,810] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [708,721,722,723,1228,1229,1230,1672,1681,1622,1311,556,495,497,498,175,575,1293,1288,1289,1290,1291,1292,1287,1256,1247,1249,1251,172,1634,707,709,1234,1253,1257,1258,1625,1628,1650,1671,1673,537,538,535,1072] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4331,1269,4459,145,150,138,139,137,4465,4467,1244,1248,686,683,688,675,690,1266,1268,163,144,4292,4297,4295,4294,4298,4300,4302,4303,4436,4435,114,4466,678,1240,682,4318,1238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4156,4185,4155,4079,4082,4154,4163,4131,4088,4133,4126,4128,4129,4096,4139,4056,4055,3980,4187,3981,3957,3956] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [916,4351,4347,4362,4364,4365,4366,915,914,951,952,4640,4627,894,1082,325,335,342,339,340,341,890,925,353,913] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [976,977,978,1043,1011,4538,4541,4573,987,982,983,1007,1008,1009,1010,1004,4563,4565,4567,4568,4629,1042,4535,4537,4571,4619,4622,4628,4572,4599,4623] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1757,1576,1563,901,902,903,1767,1768] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [830,831,832,834,307,309,378,400,401,383,384,380,382,379,381,829,867,803] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [550,566,567,469,1182,1156,1183,1203,730,731,464] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        