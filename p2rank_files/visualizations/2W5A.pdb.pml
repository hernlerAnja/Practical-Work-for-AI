
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
        
        load "data/2W5A.pdb", protein
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
 
        load "data/2W5A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1186,1187,809,803,1175,1338,1391,1336,1388,1390,109,110,114,115,118,123,104,105,295,749,296,297,1211,1213,747,1212,762,800,780,783,1210,1301,1314,1317,1322,106,151,155,156,274,273,101,102,776,98,139,293,128,301,313,314,1193,1174,1297,1194,567,1305,1389] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1138,1147,1154,1160,1158,1454,1469,1135,1140,1141,1126,1120,1463,1466,1622,1585,1593,1594,1621,1505,1506,1507,1508,1142,1143,1550,1552] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1226,1227,1229,766,1281,2296,2291,2292,2294,1241,1242,2290,557,577,765,767,540,2293,543,532,771,764,250,251,1230,613,255] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1446,1427,1438,1442,1444,1718,1676,1677,1719,1171,1182,1460,1458,1180,1181,820,823] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [835,963,959,960,961,962,928,1250,1253,1254,1257,1220,987,836,858,796,798,1225] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [537,1042,1044,1045,538,2264,2261,2235,552,544,2274,2276,2270] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [421,422,424,707,394,439,395,658,660,339,340,341,336,338,396,397,706,629,630,628,631] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        