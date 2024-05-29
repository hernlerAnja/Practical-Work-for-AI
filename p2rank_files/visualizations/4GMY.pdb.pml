
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
        
        load "data/4GMY.pdb", protein
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
 
        load "data/4GMY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [390,241,388,785,192,194,197,239,196,240,801,803,496,499,501,533,407,374,225,211,212,215,227,228,193,199,200,202,219,220,224,464,491,489,490,495,461,459,462,463,834,835,838,1248,1247,1217,534,1330,1349,1335,1357,1351,1231,1333,1329,566,567,639,784,807,810,789,796,870,867,1358,1359,1344,640,1246,825,638,842,843] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [264,143,157,109,139,761,111,114,249,250,398] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2290,1427,1428,1432,1080,2337,2340,1115,1666,1086,1117,1088,1116,1118,1664,1665,1667,1668,1671,2328,2333,2344,2323,2312,2331,2352,2288,2299,1135,1389,1139] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1477,1493,1494,1497,1490,1519,1523,1524,1509,1979,1574,1611,1601,1607,1633,1538,2002,2003,1651,1653] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1193,1358,1359,1531,1513,1220,1222,1335,1357,1231,219,215,1192,1529,1530] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1562,1563,859,1767,1769,1862,1815,1851,1854,1855,1868,1869,1816,1795,1220,1221,860] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        